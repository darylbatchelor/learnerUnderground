<?php
/**
 *Custom sidebar template for the front page - works through linking to 
 *template-front.php and calling get_sidebar('front') function 
 *The sidebar containing the main widget area.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package sole
 */
if (is_user_logged_in ()) {
  
 
?>

    <aside id="member-widget" class="widget-area" role="complementary">

      <!-- current sessions area 
 <h1><?php _e( 'Current SOLE Sessions', 'sole' ); ?></h1>
      <ul>
        <?php if ( bp_has_groups( bp_ajax_querystring( 'groups' ) . 'max=2&type=random' ) ) : ?>
          <?php while ( bp_groups() ) : bp_the_group(); ?>
            <li class="item-title"><a href="<?php bp_group_permalink(); ?>"><?php bp_group_name(); ?></a></li>
          <?php endwhile; ?>
        <?php endif; ?>
    </ul>

    <br>-->

<!-- Activity feed   -->
<?php if (!is_page('Group Chat')) { ?>
  <h1><?php _e( 'Activity Feed', 'sole' ); ?></h1>
      <ul>
       <?php bp_get_template_part('activity/activity-loop-sidebar') ?>
    </ul>

    <br>

   
<?php } ?>


      <!-- friends area -->
      <h1><?php _e( 'Friends', 'sole' ); ?></h1>
      <ul>
        <?php if ( bp_has_members( 'user_id=' . bp_loggedin_user_id() ) ) : ?>
          <?php while ( bp_members() ) : bp_the_member(); ?>
            <li><a href="<?php bp_member_permalink(); ?>"><?php bp_member_avatar('type=thumb&width=50&height=50'); ?></a></li>
          <?php endwhile; ?>
        <?php endif; ?>
      </ul>
      <br>
      <!-- members area -->
      <h1><?php _e( 'Members online', 'sole' ); ?></h1>
      <ul>
        <?php if ( bp_has_members( 'type=online' ) ) : ?>
          <?php while ( bp_members() ) : bp_the_member(); ?>
            <li><a href="<?php bp_member_permalink(); ?>"><?php bp_member_avatar('type=thumb&width=50&height=50'); ?></a></li>
          <?php endwhile; ?>
        <?php endif; ?>
      </ul>
      <br>
     
      <h1><?php _e( 'About Me', 'sole' ); ?></h1>
      <ul>
        
          <?php  while ( bp_members() ) : bp_the_member();  ?>
            <p><?php bp_member_profile_data( 'field=About' ); ?><P>
          <?php endwhile; ?>
       
    </ul>
    
    </aside>

    <?php
    if ( ! is_active_sidebar( 'sidebar-1' ) ) {
    	return;
    }

   
     
}
?>



<aside id="secondary" class="widget-area" role="complementary">
	<?php dynamic_sidebar( 'sidebar-1' ); ?>
</aside><!-- #secondary -->

