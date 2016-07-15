<?php
/**
 * The front template file.
 * This is the front page template. It shows latest activity.
 *
 * Template Name: Front Hub (activity)
 *
 * @package sole
 */

get_header();  ?>

<div id="primary" class="content-area">
  <div id="content" class="site-content" role="main">
    <div id="buddypress">
      <div class="solesession-front-page" role="main">
	    	<?php if ( is_user_logged_in() ) : ?>
	    		<?php bp_get_template_part('activity/post-form') ?>
	    	<?php endif; ?>
	    	<?php bp_get_template_part('activity/activity-loopfront') ?>
    	</div>
    </div><!-- #buddypress -->
  </div><!-- #content -->
</div><!-- #primary -->
<?php get_sidebar('front'); ?>
<?php get_footer(); ?>