<?php

/*
Plugin Name: Custom Learning Post
Plugin URI: 
Description: Creates a custom post for learning from SOLE sessions
Version: 1.0
License: GPL3
Author: Daryl Batchelor
Author URI: http://batchelors.id.au

*/


add_action( 'init', 'dgb_create_learning_post_type' );

function dgb_create_learning_post_type(){
	register_post_type( 'learnings',
array(
'labels' => array(
'name' => 'Learnings',
'singular_name' => 'Learning',
'add_new' => 'Add New',
'add_new_item' => 'Add New Learning',
'edit' => 'Edit',
'edit_item' => 'Edit Learning',
'new_item' => 'New Learning',
'view' => 'View',
'view_item' => 'View Learning',
'search_items' => 'Search Learnings',
'not_found' => 'No Learnings found',
'not_found_in_trash' =>
'No Learnings found in Trash',
'parent' => 'Parent Learning'
),
'public' => true,
'menu_position' => 21,
'supports' =>
array( 'title', 'editor', 'comments',
'thumbnail', 'custom-fields' ),
'taxonomies' => array( '' ),
'menu_icon' =>
plugins_url( 'write-icon.png', __FILE__ ),
'has_archive' => true
)
);
	register_taxonomy(
'learning_type',
'learnings',
array(
'labels' => array(
'name' => 'Learning Category',
'add_new_item' => 'Add New Learning Category',
'new_item_name' => "New Learning Category Name"
),
'show_ui' => true,
'show_tagcloud' => false,
'hierarchical' => true
)
);
}













