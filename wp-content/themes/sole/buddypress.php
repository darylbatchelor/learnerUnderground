<?php

/**
* The template for displaying buddypress components
*
*@package sole
*/

get_header();

?>

<div id="primary" class="full-width content-area">
	<div id="content" class="site-content">
		<?php while (have_posts()) : the_post(); 	?>

		<?php the_content(); ?>

		<?php endwhile; ?>
	</div>
</div>

<?php get_footer(); ?>