<?php


$members = $_GET['members'];
$member_array = explode(", ",$members);
 
$parse_uri = explode( 'wp-content', $_SERVER['SCRIPT_FILENAME'] );
require_once( $parse_uri[0] . 'wp-load.php' );
$own_user = get_current_user_id ();

foreach ($member_array as $key => $value) {

$user_id = $value;
$user = get_user_by( 'id', $user_id );
	$istyping = get_user_meta($value, 'is_typing', true);
	if ($istyping == 1) {
		if ($own_user == $value) {
			echo "Remember to submit changes so other can see what you have written<br>";
		} else {
		echo $user->first_name . " is typing hit \"Refresh Page\" to see changes<br>";
		}
	}
}

?>