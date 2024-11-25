#!/bin/sh
if [ ! -f "/var/www/wp-config.php" ]; then
cat << EOF > /var/www/wp-config.php
<?php

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wpuser' );

/** Database password */
define( 'DB_PASSWORD', 'wppass' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

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
define( 'AUTH_KEY',         '>L(aN/?4Q&>S+XT98m.zzhJ/H&E? <GY} Rc~p`P_=hzjh}cl:]&iaFu0<GyeOla' );
define( 'SECURE_AUTH_KEY',  '!W%I={7N&y}~!Qn6.dEyZiZH[oP_v@4juSC90YYj*RADXJ{G6Cw,+t78LgbSBeAn' );
define( 'LOGGED_IN_KEY',    'rTO*Mu^6PiB_97@M5>=F3PD}Ov|(I,3k3ht50(&OF_5;geN~1yRmGin|+(:bUILi' );
define( 'NONCE_KEY',        'H {S?tU#m4L,uJ7c(j(C*OhP@( w+>v+iKo_I8;|fX<c4E[n#Hyp;Y_W_0cr}2m<' );
define( 'AUTH_SALT',        '?6DjR1)o76k}F8ZA .([fGv]=Ce8tsb]:q)0}oo,c.6g >#THJ^*>+?{nB:R_&.p' );
define( 'SECURE_AUTH_SALT', '?_ELMwR#x`=m(uc(_GO*@meN ^&@[V(v&ldvqkjJ= hB:N}D^h!2VxZA0`eS2<$n' );
define( 'LOGGED_IN_SALT',   'hj<IDsSi1V~C[3mXQ_6wxv~VH}.XmDYgG DbX_j|.vJ=Jrz@`1gHVfJvy]eGWB4r' );
define( 'NONCE_SALT',       ':k~KR<x[l)Yux#k#Kx(ui6>V1Et>aOkg7* VZ2%[9()O?v+F5c7t8}!,CgC^ Lj%' );

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
EOF
fi
