<?php

/*
Plugin Name: Custom Question Post
Plugin URI: 
Description: Creates a custom post for questions
Version: 1.0
License: GPL3
Author: Daryl Batchelor
Author URI: http://batchelors.id.au

*/


add_action( 'init', 'dgb_create_question_post_type' );

function dgb_create_question_post_type(){
	register_post_type( 'questions',
array(
'labels' => array(
'name' => 'Questions',
'singular_name' => 'Question',
'add_new' => 'Add New',
'add_new_item' => 'Add New Question',
'edit' => 'Edit',
'edit_item' => 'Edit Question',
'new_item' => 'New Question',
'view' => 'View',
'view_item' => 'View Question',
'search_items' => 'Search Questions',
'not_found' => 'No Questions found',
'not_found_in_trash' =>
'No Questions found in Trash',
'parent' => 'Parent Question'
),
'public' => true,
'menu_position' => 20,
'supports' =>
array( 'title', 'editor', 'comments',
'thumbnail', 'custom-fields' ),
'taxonomies' => array( '' ),
'menu_icon' =>
plugins_url( 'FAQ-icon.png', __FILE__ ),
'has_archive' => true
)
);
	register_taxonomy(
'question_type',
'questions',
array(
'labels' => array(
'name' => 'Question Category',
'add_new_item' => 'Add New Question Category',
'new_item_name' => "New Question Category Name"
),
'show_ui' => true,
'show_tagcloud' => false,
'hierarchical' => true
)
);
}













