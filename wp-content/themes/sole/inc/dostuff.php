<?php

	//loop through members to get total members
  	while ( bp_group_members() ) : bp_group_the_member(); 
	 	$user_id = bp_get_member_user_id();
	 	$key = 'soles';
		$new_value = array(
			'question' => bp_get_group_name(),
			'topic' => groups_get_groupmeta(bp_get_group_id(), 'category', 1),
			'session-started' =>  groups_get_groupmeta(bp_get_group_id(),  'start-time', 1),
			'session-completed' => true,
			);
	


$current_sole_data = get_user_meta($user_id,'soles');

$new_sole_data = $new_value;

array_push($current_sole_data, $new_value);

$new_sole_data = $current_sole_data;
echo "<br><br>"; print_r($new_sole_data); echo "<br>";


delete_user_meta( $user_id, 'soles');//Clear out the meta data...
update_user_meta( $user_id, 'soles', $new_sole_data);

	 	//$user_meta = get_user_meta ($user_id, $key, false );

		 //check to see if they already have a soles array i.e if it is the first time they have finished a sole
		/* if (empty($user_meta)) {
		 	
		 	
			$updated = update_user_meta( $user_id, $key, $new_value );
		 
		 } else {
		 	$new_value = array_push($user_meta, $new_value);
		 	update_user_meta( $user_id, $key, $new_value );
		 }*/

	// Will return false if the previous value is the same as $new_value.
	//$updated = update_user_meta( $user_id, $key, $new_value );
 
  	endwhile; 
	
	
?>