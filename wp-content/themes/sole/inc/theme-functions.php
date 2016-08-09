 <?php

/**
 * Outputs a message before the group directory
 *
*		add_action('bp_before_groups_loop', 'sole_groupmessage');
*		function sole_groupmessage(){ ?>
*		<div id="message">
*		<p><?php _e('Join a Learning Session and get involved in the community', 'sole'); ?></p>
*		</div>
*	<?php
*	}
*/

/**
*Function to add a phrase before the activity stream entry
*/

//add myprofile to top navigation menu
function dgb_ad_my_profile_to_main_nav($items){
	//Logged in user only
	if (! is_user_logged_in()) {
		return $items;
	}
	global $bp;
	$profile_link = '<li class="myprofile-link"><a href="' . $bp->loggedin_user->domain . '">My Profile</a></li>';
	$items = $profile_link . $items;
	return $items;
}

add_filter('wp_nav_menu_items', 'dgb_ad_my_profile_to_main_nav');

function sole_filter_activityaction($content){
	return 'The following occurred: ' . $content;
}

add_action('dgb_before_query', 'dgb_create_sole_button');

function dgb_create_sole_button(){

		if (is_front_page() && $_POST['create-sole-button'] == "Create New Group") {
			$uniqueslug = md5(current_time('mysql'));
			$args = array(
				'name' => $_POST["sole-question"],
				'slug'         => 'group' . $uniqueslug,
				);
			groups_create_group( $args );
			$groupcategory= $_POST['sole-question-category'];
			dgb_createCatAfterGroup($groupcategory);
			echo '<script>window.location="' . get_site_url() . '/groups/group'  . $uniqueslug . '"</script>';
		
	}
}

function dgb_createCatAfterGroup($meta_value) {
 			 global $wpdb;
  			$group = $wpdb->get_row("SELECT * FROM `wp_bp_groups` ORDER BY date_created DESC");
  			groups_update_groupmeta( $group->id, 'category', $meta_value);
			}
add_action('groups_created_group', 'createCatAfterGroup');

function dgb_group_sole_header_start(){

if ($_POST['end'] && !empty(groups_get_groupmeta(bp_get_group_id(),'start-time'))) {  
		
		dgb_end_of_timer();
		
} 
$i=0; 	
$user_id = get_current_user_id ();
	$group_id = bp_get_group_id();
if ($_POST['join']) {
  		
 $i++;
   	groups_accept_invite( $user_id, $group_id );
   	echo '<script>window.location.href = window.location.href;</script>';
}


	//loop through members to get total members
  	while ( bp_group_members() ) : bp_group_the_member(); 
 	 $i++; 
 	  
  	endwhile; 

  	

  	

//is user a member?
  	
  	if (!groups_is_user_member( $user_id, $group_id ) && $i <= 5) {
  		$number_of_groups = get_user_meta($user_id, 'total_group_count', true);
  		if ($number_of_groups == 0) {
  			echo '<form class="start-sole-button" action="" method="post">
  					
	   	        	<input class="main-button" type="submit" name="join" value="Join Group">
	        		</form>';
  		} elseif ($number_of_groups >= 1) {
  			echo "<p>"; _e('Sorry you are already a member of a SOLE.  You must leave your other SOLE before you can join this one!', 'sole'); echo "</p>";
  		}
  		
  		
  	} elseif (!groups_is_user_member( $user_id, $group_id ) && $i >= 6) {
  		_e('Sorry SOLE is Full!', 'sole');
  	}

//if members is equal to or less than 1 then say you need more members to start
   if (($i == 1) && empty(groups_get_groupmeta(bp_get_group_id(),'start-time')) && groups_is_user_member( $user_id, $group_id ) ) { ?> 
 	  <h1>  <?php _e('You need 1 more member before you can start!', 'sole'); ?> </h1>


	<?php

	
	 } 




//if you have more than 1 member and the button has not been pressed and timestamp has not been saved to group meta echo out button (form) 

	  elseif (!isset($_POST['start']) && !isset($_POST['end'] ) && !isset($_POST['join']) && groups_is_user_member(  $user_id, $group_id ) )  {

	  	if (empty(groups_get_groupmeta(bp_get_group_id(),'start-time'))) {
	  		echo '<h2>';
	  		_e('The SOLE has not yet started...', 'sole');
	  		echo "</h2><br>";
	  		if (groups_is_user_admin($user_id, $group_id)) {
	  			
	  		echo '<form class="start-sole-button" action="" method="post">
	   	        	<input class="main-button" type="submit" name="start" value="Start SOLE Session!">
	        		</form>';
	  		} else {
	  			echo '<h2>Nearly there, the SOLE creator will be starting the session soon!</h2>';

	  		}
	  		
	  	} else {
	  		//check to see if member has already started before
	  		$joined_members = groups_get_groupmeta( bp_get_group_id(), 'group-members');
	  		$user_id = get_current_user_id();
	  		
	  		if (in_array($user_id, $joined_members) && groups_is_user_member( get_current_user_id(), bp_get_group_id() )) {


			$finish_time = groups_get_groupmeta(bp_get_group_id(), 'finish-time');
			if (current_time('timestamp') >= $finish_time) {
				echo "<h1>";
				_e("Sole Session Complete!", "sole");
				echo "</h1>";
			} 
				insert_JS_Countdown_timer($finish_time); 


// check to see if the member has previously joined the group? If no allow them to start the session
			} elseif (!in_array($user_id, $joined_members) && groups_is_user_member( get_current_user_id(), bp_get_group_id() )){ 

	  			

	  		echo '<form class="start-sole-button" action="" method="post">
	   	        	<input class="main-button" type="submit" name="start" value="Start SOLE Session!">
	        		</form>';

	  	}
	  }
		
	        		
//if the button has been pressed to start the session
	} elseif ($_POST['start'])  {


		if (empty(groups_get_groupmeta(bp_get_group_id(),'start-time')) && groups_is_user_admin($user_id, $group_id)) {
			$user_id = get_current_user_id ();
			$start_time = current_time('timestamp');
	//5400 = 1.5 hours
	$finish_time = $start_time + 5400;

	// save the time stamp in the group meta
		groups_update_groupmeta(  bp_get_group_id(),  'start-time',  $start_time);
		groups_update_groupmeta(  bp_get_group_id(),  'finish-time',  $finish_time);
		$member_array = array();
		array_push($member_array, $user_id);
		groups_update_groupmeta(  bp_get_group_id(),  'group-members',  $member_array);
echo "Sole started Here <br> need to display video chat option for the starter person<br>"; ?>

<?php dgb_insert_hangout_btn();?>
	
<?php insert_JS_Countdown_timer($finish_time); 

		} else {
// else start button pressed and not group admin/creator
				echo 'Sole joined after started by another member';
				//update group meta to add to total members
				// first check that there is at least more than 30 minutes left
				//1800 = 30 minutes
				$current_time = current_time('timestamp');
				$finish_time = groups_get_groupmeta( bp_get_group_id(), 'finish-time');
				if ($current_time <= ($finish_time-15)) {
					echo "<BR><br>there is enough time to join - update group meta with group member<br><br>Display video chat here";

				// add group meta of group members as an array of members
				$user_id = get_current_user_id ();					
				$current_sole_data = groups_get_groupmeta(bp_get_group_id(),'group-members');
				array_push($current_sole_data, $user_id);
				$new_sole_data = $current_sole_data;
				groups_delete_groupmeta( bp_get_group_id(), 'group-members');//Clear out the meta data...
				groups_update_groupmeta(  bp_get_group_id(), 'group-members', $new_sole_data);


					//start the JS timer
						insert_JS_Countdown_timer(groups_get_groupmeta(bp_get_group_id(),'finish-time')); 	
				} else {
					echo "<BR><br>";
					_e('sorry you are too late there is less than 30 minutes left in this SOLE', 'sole');
					if (groups_is_user_member(  $user_id, $group_id )) {
						
						echo '<form class="start-sole-button" action="" method="post">
	   	        	<input class="main-button" type="submit" name="end" value="Leave SOLE Session">
	        		</form>';
					}
				}

		}

	
	} 



}
// this is the js countdown script - I will have to look into adding a function to the second paramater to delets groups etc...
function insert_JS_Countdown_timer ($finishtime){ 
	?>
	<div id="dgb-timer-message">
		
	</div>
	<h1 id="bpscountdowntimer"></h1>

<?php do_action('dgb-under-counter'); ?>

	<script type="text/javascript">
	/***********************************************************************************************************/
	/* Feel free to use this Countdown Timer code.                                                             */
	/* Please leave this Kudos here if you use this code.                                                      */
	/* Kudos: Ed @ AIT-pro.com                                                                                 */
	/* http://forum.ait-pro.com/forums/topic/javascript-countdown-timer-php-countdown-timer-countdown-to-date/ */
	/***********************************************************************************************************/
	/* <![CDATA[ */
	var MMode = setInterval(function(){ MModeTimer() }, 1000);

	function MModeTimer() {

	var currentTime = new Date().getTime() / 1000;
	var futureTime = <?php echo $finishtime; ?>;
	var timeRemaining = futureTime - currentTime; 
	var minute = 60;
	var hour = 60 * 60;
	var day = 60 * 60 * 24;
	var dayFloor = Math.floor(timeRemaining / day);
	var hourFloor = Math.floor((timeRemaining - dayFloor * day) / hour);
	var minuteFloor = Math.floor((timeRemaining - dayFloor * day - hourFloor * hour) / minute);
	var secondFloor = Math.floor((timeRemaining - dayFloor * day - hourFloor * hour - minuteFloor * minute));
	var countdownCompleted = "<h1>Sole Session Complete!</h1>";

	if (secondFloor <= 0 && minuteFloor <= 0) {

clearInterval(MModeTimer);
document.getElementById("bpscountdowntimer").innerHTML = countdownCompleted;

} else {

if (futureTime > currentTime) {
document.getElementById("bpscountdowntimer").innerHTML = hourFloor + " Hour " + minuteFloor + " Minutes " + secondFloor + " Seconds ";
}
}
}
	
	/* ]]> */
	</script>

<?php

	

}

function dgb_under_timer(){
	echo '<form class="start-sole-button" action="" method="post">
	   	        	<input class="main-button" type="submit" name="end" value="End SOLE Session!">
	        		</form>';
}
add_action('dgb-under-counter','dgb_under_timer');



function dgb_end_of_timer(){
	

	 	$user_id = get_current_user_id ();
	 	$key = 'soles';
		$new_value = array(
			'question' => bp_get_group_name(),
			'topic' => groups_get_groupmeta(bp_get_group_id(), 'category', 1),
			'session-started' =>  groups_get_groupmeta(bp_get_group_id(),  'start-time', 1),
			'session-completed' => true,
			);
	
//check to see if session has already been saved to profile
	$user_sole_data = get_user_meta($user_id, $key, true);


	if (!is_array($user_sole_data) ) {

		$current_sole_data = get_user_meta($user_id,'soles');

		$new_sole_data = $new_value;

		array_push($current_sole_data, $new_value);
	

		$new_sole_data = $current_sole_data;



		delete_user_meta( $user_id, 'soles');//Clear out the meta data...
		update_user_meta( $user_id, 'soles', $new_sole_data);


		_e('Sole details saved to your profile', 'sole');
	}
	
	elseif ( !in_array($new_value, $user_sole_data, false)) {
		
		
		$current_sole_data = get_user_meta($user_id,'soles');

		$new_sole_data = $new_value;

		array_push($current_sole_data, $new_value);
	

		$new_sole_data = $current_sole_data;



		delete_user_meta( $user_id, 'soles');//Clear out the meta data...
		update_user_meta( $user_id, 'soles', $new_sole_data);


		_e('Sole details saved to your profile', 'sole');
		
			}



if (groups_is_user_admin( $user_id, bp_get_group_id() )) {
	if (groups_get_groupmeta(bp_get_group_id(), 'total_member_count') == 1) {
		groups_delete_group( bp_get_group_id() );
		echo '<script>window.location="' . get_site_url() . '"</script>';
	} else {
		echo "<br><br>";
		_e('Cant delete group as there are still members', 'sole');
		echo '<form class="start-sole-button" action="" method="post">
	   	        	<input class="main-button" type="submit" name="end" value="End SOLE Session!">
	        		</form>';
	}
} else{
	groups_leave_group( bp_get_group_id(), $user_id );	
}

	}
// adds the function above to the sole group header responsible for adding start and finish time and clock to header


add_action('dgb_custom_sole_header', 'dgb_group_sole_header_start');

/*
 * CUSTOM GLOBAL VARIABLES
 */
function dgb_global_vars() {

    global $dgb_vars;
    $wtnerd['sole-started'];


}
add_action( 'parse_query', 'dgb_global_vars' );

function dgb_insert_hangout_btn(){
 //group loop to get all group members and their google ids for hangout js function below 
 $group_id = bp_get_group_id();

if ( bp_has_groups() ) {
 
  
     while ( bp_groups() ) : bp_the_group(); 
   		 if (bp_group_is_admin()) { 

			 if ( bp_group_has_members('group_id=' . $group_id ) ) { 
			$google_id_array = array();
			 
	 
	 
				   while ( bp_group_members() ) : bp_group_the_member();
				 
				
				 
				$user_id = bp_get_group_member_id(); //current logged in user
				$field = '3'; // the ID of the field referenced in table wp_bp_xprofile_fields
				$user_google_id = xprofile_get_field_data( $field, $user_id );
				array_push($google_id_array, "{ id: '" . $user_google_id ."', invite_type:'PROFILE'}");
				
				   endwhile; 
				 $invite_list =  join(", ", $google_id_array);
				 
			 };
 		 };
 
     endwhile; 
    
 
 }; echo 'invites="['. $invite_list . ']"'; ?> 

<script src="https://apis.google.com/js/platform.js" async defer></script>
<g:hangout render="createhangout" invites="[<?php echo $invite_list; ?>]"></g:hangout>

</script>
<?php
}

?>
