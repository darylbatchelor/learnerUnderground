<?php
/*
Plugin Name: Add Sole Learning
Plugin URI: 
Description: Creates shortcode for a user to submit a content for a question.
Version: 1.0
License: GPL3
Author: Daryl Batchelor
Author URI: http://batchelors.id.au
*/




add_shortcode('submit-sole-learning', 'add_sole_learning_form');

function add_sole_learning_form(){
	
	//make sure user is logged in


	if (!is_user_logged_in()) {
		echo "<div id='submit-learning'><p>";

		_e('Sorry you have to be logged in to create a learning submission', 'sole');
		echo "</p></div>";
		return;
	}

//query to find group id of current logged in user
$user_id = get_current_user_id ();
	global $wpdb; 

                    $sql="SELECT * FROM `wp_bp_groups_members` WHERE `user_id` = '$user_id'";

                    $current_group_member_row = $wpdb->get_row($sql);

                   $group_id = $current_group_member_row->group_id;

//make sure the user is a member of a sole session
$is_member = groups_is_user_member( $user_id, $group_id );

if (!$is_member) {
echo "<div id='submit-learning'><p>";

		_e('Sorry you have to be a member of a SOLE Session to create a learning submission', 'sole');
		echo "</p></div>";
		return;
	}

	if (empty(groups_get_groupmeta($group_id,'start-time')) ) {
		echo "<div id='submit-learning'><p>";

		_e('You have to start the SOLE Session before you try to create a learning submission', 'sole');
		echo "</p></div>";
		return;
	}

//find the post id if previously created and then get the content
                    $sql="SELECT * FROM `wp_postmeta` WHERE `meta_key`='group_id' AND `meta_value`='$group_id'";

                    $meta_id_row = $wpdb->get_row($sql);
                    $post_id = $meta_id_row->post_id;
                    $current_content = get_post($post_id);

//get the current group object
                  $current_group =  groups_get_group( array( 'group_id' => $group_id ) );
//get the current group name
                  $group_name = $current_group->name;

//get the group members and category from group meta (array)
                  $group_members = groups_get_groupmeta($group_id, 'group-members');
// get a list of group members' ids in a csv variable for use in bp_has_members loop                   
$group_member_csv = implode(', ', $group_members);



//get group category
                  $group_category = groups_get_groupmeta($group_id, 'category');
?>
<h1><?php echo $group_name; ?></h1>	
<a href="<?php  echo get_permalink(); ?>">Refresh page</a> 
<div id="submit-learning">
	<div id="typing_on"></div>
	<form method="post" id="addlearning" action="">
		<!-- Nonce field to verify visitor provenance-->
		<?php wp_nonce_field('add_learning_form', 'sole_user_form'); ?>

		<?php if (isset($_GET['addlearningmessage']) && $_GET['addlearningmessage'] == 1) { ?>
			<div style="margin: 8px;border: 1px solid #ddd; background-color: #e27a3f; color: #000;">
				Thanks for your submission!
			</div>
		<?php } ?>
		<!-- Post variable to indicate user submitted items -->
		<input type='hidden' name='dgb_lrus_user_learning' value='1' />
		<table>
			<tr>
			
				<td><input type="hidden" name="learning_question" value="<?php echo $group_name; ?>" readonly /></td>
			</tr>
			<tr><td><h3> So what have you learned today:</h3></td></tr>
			<tr>
				
				<td> <textarea name="content" id="textarea" rows="30" cols="60"><?php print_r($current_content->post_content) ?></textarea> </td>
			</tr>
			
			<tr>
				
				<td><input type="hidden" name="group_id" value="<?php echo $group_id; ?>" readonly /></td>
			</tr> 
			<tr>
				
				<td><input type="hidden" id="members" name="learning_members" value="<?php echo $group_member_csv; ?>" readonly /></td>
			</tr> 

			<tr>
				
				<td><input type="hidden" name="learning_category" value="<?php echo $group_category; ?>" readonly /></td>
			</tr> 
		</table>
		<input type='submit' name='submit' value='Submit Changes' />

	</form>

</div>

<?php }

add_action('template_redirect', 'dgb_match_new_learnings');

function dgb_match_new_learnings($template){
	if (!empty($_POST['dgb_lrus_user_learning'])) {
		dgb_lrus_process_user_learnings();
	} else{
		return $template;
	}
}

function dgb_lrus_process_user_learnings(){
	//check that all required fields are present and non-empty
	if (wp_verify_nonce($_POST['sole_user_form'], 'add_learning_form') && 
		!empty($_POST['learning_question']) &&
		!empty($_POST['content']) &&
		!empty($_POST['learning_members']) &&
		!empty($_POST['learning_category']) &&
		!empty($_POST['group_id'])
		) {
		//create array with received data
		$new_learning_data = array(
			'post_status' => 'publish',
			'post_title' => $_POST['learning_question'],
			'post_type' => 'learnings',
			'post_content' => $_POST['content']
			);
	//find out if post for learning already exists


//query to find group id of current logged in user
$user_id = get_current_user_id ();
	global $wpdb; 

                    $sql="SELECT * FROM `wp_bp_groups_members` WHERE `user_id` = '$user_id'";

                    $current_group_member_row = $wpdb->get_row($sql);

                   $group_id = $current_group_member_row->group_id;

                    $sql="SELECT * FROM `wp_postmeta` WHERE `meta_key`='group_id' AND `meta_value`='$group_id'";

                    $meta_id_row = $wpdb->get_row($sql);
                    $post_id = $meta_id_row->post_id;

                    
//if exists update post
                    if (!empty($meta_id_row)) {
                    	
                    	 $update_post = array(
                    	 	'ID' => $post_id,
                    	 	
							'post_content' => $_POST['content']
                    	 	);
                    	 
                    	 // Update the post into the database
  						wp_update_post( $update_post );
                    } else {




		//insert new post data into site database
		//Store new post ID from returned value in variable
	$new_learning_id = wp_insert_post($new_learning_data);
		//store members
	add_post_meta($new_learning_id, 'learning_members', wp_kses($_POST['learning_members'], array()));
	//Set learning category as post meta as can not get categories to work
	add_post_meta($new_learning_id, 'learning_category', wp_kses($_POST['learning_category'], array()));
	//Set the group Id to track the unique group
	add_post_meta($new_learning_id, 'group_id', wp_kses($_POST['group_id'], array()));
	
	//Redirect browser to learning submission page
	$redirectaddress = (empty($_POST['_wp_http_referer']) ? site_url() :
$_POST['_wp_http_referer']);
	wp_redirect(add_query_arg('addlearningmessage', '1', $redirectaddress));

		}
	}
}


/*
 if ( bp_has_members( 'include=' . $group_member_csv  ) ) : ?>
 

  <ul id="members-list" class="item-list" role="main">
 
  <?php while ( bp_members() ) : bp_the_member(); ?>
 
    <li>
      <div class="item-avatar">
         <a href="<?php bp_member_permalink(); ?>"><?php bp_member_avatar(); ?></a>
      </div>
 
      <div class="item">
        <div class="item-title">
           <a href="<?php bp_member_permalink(); ?>"><?php bp_member_name(); ?></a>
 

 
       </div>
 

 
 
   </li>
 
 <?php endwhile; ?>
 
 </ul>
 
 
<?php else: ?>
 
   <div id="message" class="info">
      <p><?php _e( "Sorry, no members were found.", 'buddypress' ); ?></p>
   </div>
 
<?php endif; 

*/
?>