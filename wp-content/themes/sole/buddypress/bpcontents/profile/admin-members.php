<?php get_header() ?>

<div class="content-header">
	<ul class="content-header-nav">
		<?php oci_profile_site_admin_header_tabs() ?>
	</ul>
</div>

<div id="content">
	<?php do_action( 'template_notices' ) // (error/success feedback) ?>

	<form action="<?php oci_the_profile_action(BP_MEMBERS_SLUG) ?>" method="post" id="oci-edit-tags-form" class="oci-edit-tags-form">
	<div id="oci-category-tree">
		<h2><?php _e('Member Categories', 'oci-contents') ?></h2>
		<?php oci_the_member_category_checklist('current=0') ?>
	</div>
	<p class="submit"><input type="submit" name="submit_delete_member_categories" id="submit" value="<?php _e( 'Delete', 'oci-contents' ) ?>" /></p>
	<?php wp_nonce_field( 'oci_delete_member_categories' ) ?>
	</form>

	<form action="<?php oci_the_profile_action(BP_MEMBERS_SLUG) ?>" method="post" id="oci-edit-tags-form" class="oci-edit-tags-form">
	<div id="oci-edit-tags">
	<p>
		<label><?php _e( 'Parent Category', 'oci-contents' ) ?></label>
		<?php oci_the_member_dropdown_categories() ?>
	</p>
		<label><?php _e( 'Add member categories', 'oci-contents' ) ?></label>
		<input type="text" name="oci_new_member_categories" id="oci_new_member_categories" value="" />
	</div>
	<p class="submit"><input type="submit" name="submit_add_member_categories" id="submit" value="<?php _e( 'Add', 'oci-contents' ) ?>" /></p>
	<?php wp_nonce_field( 'oci_new_member_categories' ) ?>
	</form>

</div>

<?php get_footer() ?>