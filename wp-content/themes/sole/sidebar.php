<?php
/**
 * The sidebar containing the main widget area.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package sole
 */
if (is_user_logged_in ()) {
    ?>
    <aside id="member-widget" class="widget-area" role="complementary">
      <h1><?php _e( 'Members', 'sole' ); ?></h1>
      <ul>
        <?php if ( bp_has_members( bp_ajax_querystring( 'members' ) . 'max=14&type=random' ) ) : ?>
          <?php while ( bp_members() ) : bp_the_member(); ?>
            <li><a href="<?php bp_member_permalink(); ?>"><?php bp_member_avatar('type=thumb&width=50&height=50'); ?></a></li>
          <?php endwhile; ?>
        <?php endif; ?>
      </ul>
    </aside>

    <aside id="groups-widget" class="widget-area" role="complementary">
      <h1><?php _e( 'SOLE Sessions', 'sole' ); ?></h1>
      <ul>
        <?php if ( bp_has_groups( bp_ajax_querystring( 'groups' ) . 'max=7&type=random' ) ) : ?>
          <?php while ( bp_groups() ) : bp_the_group(); ?>
            <li class="item-title"><a href="<?php bp_group_permalink(); ?>"><?php bp_group_name(); ?></a></li>
          <?php endwhile; ?>
        <?php endif; ?>
    </ul>

    
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

