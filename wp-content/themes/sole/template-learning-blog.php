<?php
/**
 * Learning Blog Template
 *
 * Template Name: Learning Blog
 *
 * @package sole
 */

get_header();  ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<div id="primary" class="content-area">

  <div id="content" class="site-content" role="main">
    <div id="buddypress">
      <div class="solesession-front-page" role="main">
	    	
          <?php the_content(); ?>
        <?php endwhile; else : ?>
        <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
      <?php endif; ?>

    	</div>
    </div><!-- #buddypress -->
  </div><!-- #content -->
</div><!-- #primary -->
<?php get_sidebar('front'); ?>
<?php get_footer(); ?>