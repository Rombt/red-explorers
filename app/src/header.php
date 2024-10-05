<!doctype html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<?php wp_body_open(); ?>

	<?php // get_template_part( 'template-parts\components\debug-grid' ); ?>


	<div class="rmbt-page-wrap">

		<?php if ( is_home() ) {
			get_template_part( 'template-parts\parts\header\header-blog' );
		} else {
			get_template_part( 'template-parts\parts\header\header' );

		} ?>