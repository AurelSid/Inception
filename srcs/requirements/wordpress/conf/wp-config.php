<?php
/** The base configuration for WordPress
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 */

define('DB_NAME', 'AsiderisDB');

define('DB_USER', 'asideris');

define('DB_PASSWORD', 'hello');

define('DB_HOST', 'mariadb');

define('DB_CHARSET', 'utf8');

define('DB_COLLATE', '');


define('AUTH_KEY',         'V@$km&>kwZz18GkpCo&eCQk~,=FFm;0{CE/[ukfvuYy|]n|5*lGZ$^ =?00|3e_^');
define('SECURE_AUTH_KEY',  'JjId5z>6+!e )=DTtp7w=%;/br&|3iM0ijIy(wh&}S=73+L9d`]&Z5_v2X7>Rz+H');
define('LOGGED_IN_KEY',    'BdvXRtc<SW>|/j|H-w:xB/2a7VF{jWL,B.WR|r9(mGuEhJz|-)A%S5ZcFr%`C4qM');
define('NONCE_KEY',        'vGz29|PLNshY:/a1Bj)x~|TO|3`@4D-/lg&=ffFA>n5s+5w|E3B gShP<ANz;Wb-');
define('AUTH_SALT',        '*i2zzF?m)& TW}P2$NNhK|{|Chl-jp;*t&Sp+&dHjR+t(c:(t(x;Z&=}#|dna%Z-');
define('SECURE_AUTH_SALT', '}7bPt~Gc9g|O-ymwoM4YSK`> 8G/A9%R?QJN~1aHfIM(4$]Lc270(<y<G;s>U*85');
define('LOGGED_IN_SALT',   'U{2JJ3oKXyfYV~4&RPl/Y<yl9`.qeCup!RR~dq2{w!+yhKBMM7&slO~m>;++,^L}');
define('NONCE_SALT',       'nA]$N<ci$+yEFDW`0=.8X%&?s!Hg )M$lEEbx)U&J$<vmR}*lSAK%$zCj_sGV#!#');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
?>