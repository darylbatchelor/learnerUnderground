<?php
/**
 * The logged out user header template.
 * This is the logged out user header template.
 *
 * @package sole
 */
 $header_image = get_header_image(); ?>
<div id="headimg" style="background: #111111 url('<?php echo esc_url( $header_image ); ?>') center center no-repeat;" class="clearfix">

<div id="about-section">
  <h2><?php _e( 'Welcome to SOLE Online', 'sole' ); ?></h2>
  <p><?php _e( 'SOLE Online is an online self directed learning environment inspired by the work of Sugata Mitra. SOLE stands for Self Directed Learning Environment.  The community was started by a parent who could not find any other children to conduct SOLE sessions with his children.  So he decided to build one in the cloud. ', 'sole' ); ?></p>
</div>

<div id="signup-section">
  <?php if ( bp_get_signup_allowed() ) : ?>
    <p id="login-text">
      <?php printf( __( 'Please <a href="%s" title="Create an account">create an account</a> to get started.', 'sole' ), bp_get_signup_page() ); ?>
    </p>
<?php endif; ?>
  <h2><?php _e( 'Already a member? Sign in', 'sole' ); ?></h2>
  <?php wp_login_form(); ?>
</div>

</div>