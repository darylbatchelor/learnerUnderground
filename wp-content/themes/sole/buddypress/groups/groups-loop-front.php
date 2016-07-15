<?php
/**
 * BuddyPress - Groups Loop
 *
 * Querystring is set via AJAX in _inc/ajax.php - bp_legacy_theme_object_filter().
 *
 * @package BuddyPress
 * @subpackage bp-legacy
 */

?>

<?php

/**
 * Fires before the display of groups from the groups loop.
 *
 * @since 1.2.0
 */
do_action( 'bp_before_groups_loop' ); ?>

<?php if ( bp_has_groups( bp_ajax_querystring( 'groups' ) ) ) : ?>



	<?php

	/**
	 * Fires before the listing of the groups list.
	 *
	 * @since 1.1.0
	 */
	do_action( 'bp_before_directory_groups_list' ); ?>

	<ul id="groups-list" class="item-list">

	<?php while ( bp_groups() ) : bp_the_group(); ?>

		<li <?php bp_group_class(); ?>>
			

			<div class="item">
					<a href="<?php bp_group_permalink(); ?>"><?php bp_group_name(); ?></a>
					
					

					<?php

					/**
					 * Fires inside the listing of an individual group listing item.
					 *
					 * @since 1.1.0
					 */
					do_action( 'bp_directory_groups_item' ); ?>

				

				<div class="action dgb_in_group_container">



					<div class="avatar-wrap">
						<?php 
					
						if ( bp_group_has_members( bp_ajax_querystring( 'groupmembers' ) . 'group_id=' . bp_get_group_id() . '&exclude_admins_mods=0' )) : ?>
	  					<ul id="dgb_in_group_list">		 
						  
						  <?php while ( bp_group_members() ) : bp_group_the_member(); ?>

						      <li class="in-group-avatar">
						     <?php  bp_group_member_avatar(); ?>
		
						    
						 	 <?php endwhile; ?>
						 
						</ul>
	 					
	 
						<?php endif;?>

						<?php

						/**
						 * Fires inside the action section of an individual group listing item.
						 *
						 * @since 1.1.0
						 */
						do_action( 'bp_directory_groups_actions' ); ?>

					</div>



			</div>
		</div>

		</li>

	<?php endwhile; ?>

	</ul>

	<?php

	/**
	 * Fires after the listing of the groups list.
	 *
	 * @since 1.1.0
	 */
	do_action( 'bp_after_directory_groups_list' ); ?>

	

<?php else: ?>

	<div id="message" class="info">
		<p><?php _e( 'There were no groups found.', 'buddypress' ); ?></p>
	</div>

<?php endif; ?>

<?php

/**
 * Fires after the display of groups from the groups loop.
 *
 * @since 1.2.0
 */
do_action( 'bp_after_groups_loop' ); ?>
