<?php
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package sole
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="hfeed site">
	<?php do_action('before'); ?>
	<header id="masthead" class="site-header" role="banner">

	</header><!--masthead-->

	<div id="main" class="site-main">

<div id="branding" class="clear">

<div id="top-header">
	<div class="site-title">
		<h1><a href="<?php echo home_url('/'); ?>" rel="home"><?php bloginfo('name'); ?></a></h1>
	</div>

<?php  if (is_user_logged_in()) : ?>
		<div class="user-avatar">
			<ul>
				<li>
					<a href="<?php echo bp_loggedin_user_domain(); ?>">
					<?php bp_loggedin_user_avatar('type=thumb&width=64&height=64'); ?>
					</a>
					
				</li>
				<li>
					<a class="button logout" href="<?php echo wp_logout_url( wp_guess_url() ); ?>"><?php _e('Log Out', 'sole'); ?></a>
				</li>
			</ul>
			
			

		</div>
</div>
	
		<?php endif; ?>

		<?php if (is_front_page()) :?>
  			<?php if (is_user_logged_in()) :
	   			 $header_image = get_header_image(); ?>
	   			 <div id="headimg" style="background: #111111 url('<?php echo esc_url( $header_image ); ?>') center bottom no-repeat;"></div> 
	  			<?php else : 
	   			 get_template_part( 'parts/member', 'join' ); 
  			endif; ?>
		<?php endif; ?>

		<nav id="site-navigation" class="navigation-main clear" role="navigation">
			
		  <h1 class="menu-toggle"><?php _e( 'Menu', 'sole' );  ?>
		  </h1>
		  <div class="screen-reader-text skip-link"><a href="#content" title="<?php esc_attr_e( 'Skip to content', 'sole' ); ?>"><?php _e( 'Skip to content', 'sole' ); ?></a></div>
		  
		  <?php 
		  if (is_user_logged_in()) {
		  	 wp_nav_menu( array( 'theme_location' => 'primary' ) ); 
		  } else {
		  		wp_nav_menu( array( 'theme_location' => 'logged_out_primary' ) );
		}
		 ?>

		 
		</nav><!-- #site-navigation -->

</div>


