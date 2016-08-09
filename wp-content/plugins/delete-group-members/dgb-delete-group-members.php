<?php
/*
Plugin Name: Delete group members if admin
Plugin URI:
Description: this plugin will display a drop down list on the manage page for groups where admin members can delete users.
Version: 1.0
Author: DB
Author URI:
License:


*/

//wrapper function if BP is activated
function bp_group_delete_member_init() {
 

	
	// This function is our custom field's form that is called in create a group and when editing group details
	function delete_group_header_fields_markup() {
	global $bp;
	$group_id = $bp->groups->current_group->id;
	$query = new BP_Group_Member_Query(array(
		'group_id' => $group_id,
		'group_role' => array(
			'admin', 'member',
			),
		));
	$all_members = $query->results;

	?>
		
	<label for="delete-members">Delete SOLE Members</label>
	<select name="delete-user" id="dgb-delete-user">
		<option selected disabled>Select member to delete</option>
		<?php foreach ($all_members as $member) { ?>
	
		<option value="<?php echo $member->ID; ?>"><?php echo $member->display_name; ?></option>
		<?php } ?>
	</select>

	<?php
	}

function dgb_delete_member_on_save(){
	if (isset($_POST['delete-user'])) {
		global $bp;
		$group_id = $bp->groups->current_group->id;
		$delete_member_id = $_POST['delete-user'];
		groups_leave_group($group_id, $delete_member_id);

if (!function_exists('bp_core_add_message')) {
	require_once '/bp-core/bp-core-functions.php';
}
	if ($delete_member_id == get_current_user_id()) {
		$message = 'You are the admin of this group <a href="' . get_permalink() . '?reassign=1" style="border:2px solid black; ">Click here to remove yourself and reasign admin role or delete group if you are the only member</a>';
		$type = 'error';
		$result = bp_core_add_message($message, $type);
	} else {
	$message = 'You have removed the member from the group';
	$type = 'success';
	$result = bp_core_add_message($message, $type);
		}
	}
}

if (isset($_GET['reassign'])) {
	function dgb_reassign_group_admin_role(){
		//find number of group members
		global $bp;
		$group_id = $bp->groups->current_group->id;
		$total_members_in_group = groups_get_groupmeta($group_id, 'total_member_count');
		if ($total_members_in_group >= 2) {
			
			
			global $wpdb;
			// returns the person who was next to join the group that is not an admin member
			
			$sql = "SELECT * FROM `wp_bp_groups_members` WHERE `group_id`= '" . $group_id . "' AND `is_admin` = '0' ORDER BY `date_modified` ASC LIMIT 1";
			$new_admin = $wpdb->get_results($sql, OBJECT);
			$user_id = $new_admin[0]->user_id;
			// makes this person admin of the group
			$sql = "UPDATE `wp_bp_groups_members` SET `is_admin` = '1', `user_title` = 'Group Admin' WHERE `wp_bp_groups_members`.`user_id` = " . $user_id;
			$wpdb->query($sql);
			//deletes the original admin from the group
			$sql = "DELETE FROM `wp_bp_groups_members` WHERE `wp_bp_groups_members`.`user_id` = " . get_current_user_id();
			$wpdb->query($sql);
			echo '<script>window.location="' . get_site_url() . '"</script>';
		
			
		} else {
			// delete group and redirect back to home page
			groups_delete_group($group_id);
			echo '<div id="message" class="updated"><p>Group Deleted!</p></div>';
		
			echo '<script>window.location="' . get_site_url() . '"</script>';
		}
	}

add_action('bp_before_group_header', 'dgb_reassign_group_admin_role');

}


	// This saves the custom group meta
	// Where $plain_fields = array.. you may add additional fields, eg
	//  $plain_fields = array(
	//      'field-one',
	//      'field-two'
	//  );
	/*function group_header_fields_save( $group_id ) {
	global $bp, $wpdb;
	$plain_fields = array(
	'sole-category'
	);
	foreach( $plain_fields as $field ) {
	$key = $field;
	if ( isset( $_POST[$key] ) ) {
	$value = $_POST[$key];
	groups_update_groupmeta( $group_id, $field, $value );
	}
	}
	}
*/
	add_filter( 'groups_custom_group_fields_editable', 'delete_group_header_fields_markup' );
	add_action( 'groups_group_details_edited', 'dgb_delete_member_on_save' );
	//add_action( 'groups_created_group',  'group_header_fields_save' );

	// Show the custom field in the group header

}
add_action( 'bp_include', 'bp_group_delete_member_init' );
/* If you have code that does not need BuddyPress to run, then add it here. */


?>