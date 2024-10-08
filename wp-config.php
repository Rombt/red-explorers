<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'red-explorers' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'hkA288?rjs;rCc_`PS@`137hH+n.+Bg)Ya}I9_9fu!8iJ4;DN^cEZ1TD?O^oby1N' );
define( 'SECURE_AUTH_KEY',  'WM6oE3mrdI B,. VP_4[k)lR{P>%L:G}dbC3rPVWu*pBoojWV3pt[J-2+M0s6  s' );
define( 'LOGGED_IN_KEY',    'If?D`#sQ_IWZ^iG5Q>28{,?mWzl #GRp7Q~gZe4q1@u/jo#r6PAq(D`CmCGnLeys' );
define( 'NONCE_KEY',        'D,QY/VoKmYsAQ@^Iih2h!e=:i&U2ERkYCn+2#ER1v0x$bu!gNy||K5^$N`%:`#))' );
define( 'AUTH_SALT',        '2=01xxsWz*cde_wH9pufx9~ cm}Kid=U2,a$xX.zp>la$x*:>q,xZj,y>5G4A_{4' );
define( 'SECURE_AUTH_SALT', 'iF:g-5K-P?xi3NqzR,OA(5?86>;>by2qCJFV&m19]:n7i^g|QC!t~eTXJ.62A{<W' );
define( 'LOGGED_IN_SALT',   'L]_*`O[]xTgggCjt0vNQ-wN~YQ9oB?E6=$r/qA)SB1kL$J&$ER?$w5 LV@K6k=0O' );
define( 'NONCE_SALT',       '] I0G7p];8w5W!);vCcIv^Wx#Zpf@*86o+}|X:s(cBwyr]4*U44F.+M7K~;{}1&a' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
