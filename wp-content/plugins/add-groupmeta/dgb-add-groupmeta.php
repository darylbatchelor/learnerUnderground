<?php
/*
Plugin Name: Add Group categories (meta)
Plugin URI: 
Description: Assigns a meta category to groups so that they can be filtered
Version: 1.0
License: GPL3
Author: Daryl Batchelor
Author URI: http://batchelors.id.au
*/

//wrapper function if BP is activated
function bp_group_meta_init() {
   
	function custom_field($meta_key='') {
	//get current group id and load meta_key value if passed. If not pass it blank
		$new_dgb_array = groups_get_groupmeta( bp_get_group_id(), $meta_key) ;
	return $new_dgb_array;
	}



	// This function is our custom field's form that is called in create a group and when editing group details
	function group_header_fields_markup() {
	global $bp, $wpdb;
	?>
	<label for="sole-category">SOLE Category</label>
	Maths <input type="checkbox" name="sole-category[]" value="maths" <?php if(custom_field('maths')) echo ' checked="checked" '; ?> /><br />
	Science <input type="checkbox" name="sole-category[]" value="science" <?php if(custom_field('science')) echo ' checked="checked" '; ?> /><br />
	History <input type="checkbox" name="sole-category[]" value="history" <?php if(custom_field('history')) echo ' checked="checked" '; ?> /><br />
	Technology <input type="checkbox" name="sole-category[]" value="technology" <?php if(custom_field('technology')) echo ' checked="checked" '; ?> /><br />

	<br>
	<?php
	}

	// This saves the custom group meta
	// Where $plain_fields = array.. you may add additional fields, eg
	//  $plain_fields = array(
	//      'field-one',
	//      'field-two'
	//  );
	function group_header_fields_save( $group_id ) {
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

	add_filter( 'groups_custom_group_fields_editable', 'group_header_fields_markup' );
	add_action( 'groups_group_details_edited', 'group_header_fields_save' );
	add_action( 'groups_created_group',  'group_header_fields_save' );

	// Show the custom field in the group header
function show_field_in_header( ) {
	
	
echo "<p> Question is related to: " . custom_field('sole-category')[0] . "</p>";

}
//add_action('bp_group_header_meta' , 'show_field_in_header') ;
}
add_action( 'bp_include', 'bp_group_meta_init' );
/* If you have code that does not need BuddyPress to run, then add it here. */