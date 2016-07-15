<?php



/**
 * Custom buddypress - (sole) Groups Cover Image Header.
 *
 * @package BuddyPress
 * @subpackage bp-legacy
 */

/**
 * Fires before the display of a group's header.
 *
 * @since 1.2.0
 */
do_action( 'bp_before_group_header' ); ?>
<div class="custom-group-header-wrap">
<?php if ( bp_group_has_members( 'exclude_admins_mods=0') ) : 
  

   do_action('dgb_custom_sole_header');
  
 	else: ?>
 
  <div id="message" class="info">
    <p>This group has no members.</p>
  </div>
 
<?php endif;?>
	<?php  ?>

</div>
<?php
/**
 * Fires after the display of a group's header.
 *
 * @since 1.2.0
 */
do_action( 'bp_after_group_header' );

/** This action is documented in bp-templates/bp-legacy/buddypress/activity/index.php */
do_action( 'template_notices' ); ?>
