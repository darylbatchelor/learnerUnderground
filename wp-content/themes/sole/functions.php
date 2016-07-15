<?php
/**
 * sole functions and definitions.
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package sole
 */

if ( ! function_exists( 'sole_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function sole_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on sole, use a find and replace
	 * to change 'sole' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'sole', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => esc_html__( 'Primary', 'sole' ),
		'logged_out_primary' => esc_html__( 'Logged Out Primary', 'sole' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	// Set up the WordPress core custom background feature.
	add_theme_support( 'custom-background', apply_filters( 'sole_custom_background_args', array(
		'default-color' => 'ececec',
		'default-image' => '',
	) ) );
}
endif;
add_action( 'after_setup_theme', 'sole_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function sole_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'sole_content_width', 640 );
}
add_action( 'after_setup_theme', 'sole_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function sole_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'sole' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'sole' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'sole_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function sole_scripts() {
	wp_enqueue_style( 'sole-style', get_stylesheet_uri() );

	wp_enqueue_script( 'sole-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'sole-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	wp_enqueue_style('runfonts', 'http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic', array(), null);

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}

	if (is_front_page() || is_page('learningblog')) {
		wp_enqueue_script( 'sole-jquery-1.8', get_template_directory_uri() . '/js/jquery-1.8.1.min.js', array(), '1', true );
		wp_enqueue_script( 'sole-question-dropdown', get_template_directory_uri() . '/js/font-page-question-dropdown.js', array('jquery',), '1', true );

	}

	if ( is_page('learningblog')) {
		wp_enqueue_script( 'istyping', get_template_directory_uri() . '/js/istyping.js', array('jquery',), '1', true );
	}
	
}
add_action( 'wp_enqueue_scripts', 'sole_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';

add_action('init', 'sole_remove_admin_bar');

function sole_remove_admin_bar(){
	if (!current_user_can('administrator') && !is_admin()) {
		show_admin_bar(false);
	}
}

/**
* Load theme functions file: inc/theme-functions.pgp
*/

require get_template_directory() . '/inc/theme-functions.php';

function my_bp_custom_group_types() {
    bp_groups_register_group_type( 'team', array(
        'labels' => array(
            'name' => 'Teams',
            'singular_name' => 'Team'
        )
    ) );
}
add_action( 'bp_groups_register_group_types', 'my_bp_custom_group_types' );


//gives all the slugs, screen-functions, css-ids and all that good-to-know-stuff
function bp_dump() {
    global $bp;
 
    foreach ( $bp as $key => $value ) {
        echo '<pre>';
        echo '<strong>;' . $key . ': </strong><br />';
        print_r( $value );
        echo '</pre>';
    }
    die;
}
//add_action( 'wp', 'bp_dump' );