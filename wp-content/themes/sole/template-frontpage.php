<?php
/**
 * The front template file.
 * This is the front page template. It shows latest activity.
 *
 * Template Name: Front Hub groups
 *
 * @package sole
 */

get_header();  ?>

<div id="primary" class="content-area">
  <div id="content" class="site-content" role="main">
    <div id="buddypress">
    	<div class="solesession-front-page" role="main">
        <h1>Join a SOLE Session</h1>
	    	<?php if ( is_user_logged_in() ) : ?>
	    		<?php bp_get_template_part('groups/groups-loop-front') ?>
	    	<?php endif; ?>
	    	
    	</div><!--.solesession-front-page-->
      <div class="solesession-front-page" role="main">
        <h1>Start a SOLE Session</h1>
        <?php if ( is_user_logged_in() ) : ?>
          <?php bp_get_template_part('groups/create-groups-front') ?>
        <?php endif; ?>
        
      </div><!--.solesession-front-page-->
    </div><!-- #buddypress -->
  </div><!-- #content -->
</div><!-- #primary -->
<?php get_sidebar('front'); ?>
<?php get_footer(); ?>