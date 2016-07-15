<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpressbuddyPress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'w7XYBCxK+_{y?OZh!C5D|4NFvGH]6]akN>pzY>I8|Sz,oBtFWH{QFG{[PYbjP/DS');
define('SECURE_AUTH_KEY',  'aZ*CTMiL$)ub;#).jLo6/o!Y~dk^i7K$%`A``$$0LG1&sb $[M{;py=[Y(Ln0|g/');
define('LOGGED_IN_KEY',    '2GYyjv[f-1/WBwZKXd0+~&[D$MUTy@>lyRef1Xp~LlDxb8MEnk-k0|-*SM2qgp~@');
define('NONCE_KEY',        '2{p8gq&50t*-<-pv(XGgB5f:=H>c;,*($G49W3*($DGFBILHQ(3?`,+D@#d+sIQF');
define('AUTH_SALT',        '$#.+orJmPhd?WqpY34vC%>/yN:HD_]wBN>qp|08el$p-cX[FE~|FFMZ@_9D]`fDN');
define('SECURE_AUTH_SALT', 'nZ)w8|xM}R|#yF#5@Q]sP3 `B{HRS1W#>ypc%ows-8{W)%1R0|&#*Pwo81Ww+/6y');
define('LOGGED_IN_SALT',   'k]M<~DO(P;avmOX+W.dq+XTyTsd]i+HbP4|/@~MN&}8JzKU-v=<dL-u}Xz{WsU||');
define('NONCE_SALT',       'n| 9FJ[g>H~yWvGq+rI9+SbL-X+wC]J}v&{1SZN%-]jPRDvy1)]<T%]_oyoAX:@|');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
