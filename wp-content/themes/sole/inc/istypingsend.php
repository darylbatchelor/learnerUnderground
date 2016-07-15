<?php

$istyping = $_GET['istyping'];
 
$parse_uri = explode( 'wp-content', $_SERVER['SCRIPT_FILENAME'] );
require_once( $parse_uri[0] . 'wp-load.php' );

$user_id = get_current_user_id ();

$user = get_user_by( 'id', $user_id );

update_user_meta( $user_id, 'is_typing', $istyping );


?>