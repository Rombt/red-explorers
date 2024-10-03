<?php
defined( 'ABSPATH' ) || exit;


// Header sections start
Redux::set_section(
	$opt_name,
	array(
		'title' => esc_html__( 'Header settings', 'red-explorers' ),
		'id' => 'settings_header',
		'desc' => esc_html__( 'Settings header site', 'red-explorers' ),
		'customizer_width' => '450',
		'subsections' => true,
		// 'icon'             => 'el el-home',
		'fields' => array(
			array(
				'id' => 'rmbt-header_img-bg',
				'type' => 'media',
				'url' => true,
				'title' => esc_html__( 'Header background image', 'red-explorers' ),
				'compiler' => 'true',
				'preview_size' => 'full',
			),
			array(
				'id' => 'rmbt-header_img-bg_alt',
				'type' => 'text',
				'title' => esc_html__( 'header background image alt', RMBT_TEXT_DOMAIN_THEME ),
			),

			array(
				'id' => 'rmbt-header_slogan',
				'type' => 'text',
				'title' => esc_html__( 'Header Slogan', RMBT_TEXT_DOMAIN_THEME ),
			),
			array(
				'id' => 'rmbt-header_title',
				'type' => 'text',
				'title' => esc_html__( 'Header Title', RMBT_TEXT_DOMAIN_THEME ),
			),
			array(
				'id' => 'rmbt-header_button_title',
				'type' => 'text',
				'title' => esc_html__( 'Text of the button', RMBT_TEXT_DOMAIN_THEME ),
			),
			array(
				'id' => 'rmbt-header_button_href',
				'type' => 'text',
				'title' => esc_html__( 'Link For The Button', RMBT_TEXT_DOMAIN_THEME ),
				'default' => '#',
			),
			array(
				'id' => 'rmbt-header_scroll-down',
				'type' => 'text',
				'title' => esc_html__( 'Scroll Down', RMBT_TEXT_DOMAIN_THEME ),
			),







			/**************************************************************************************/

			// array(
			// 	'id' => 'search_icon',
			// 	'type' => 'media',
			// 	'url' => true,
			// 	'title' => esc_html__( 'Search icon', 'red-explorers' ),
			// 	'compiler' => 'true',
			// 	'preview_size' => 'full',
			// ),
			// array(
			// 	'id' => 'icon_cart',
			// 	'type' => 'media',
			// 	'url' => true,
			// 	'title' => esc_html__( 'Icon cart', 'red-explorers' ),
			// 	'compiler' => 'true',
			// 	'preview_size' => 'full',
			// ),
			// array(
			// 	'id' => 'icon_button_book',
			// 	'type' => 'media',
			// 	'url' => true,
			// 	'title' => esc_html__( 'Icon button book', 'red-explorers' ),
			// 	'compiler' => 'true',
			// 	'preview_size' => 'full',
			// 	'default' => array(
			// 		'url' => '/assets/img/icon_plate.png',
			// 	),
			// ),
			// array(
			// 	'id' => 'modal_menu_location',
			// 	'type' => 'button_set',
			// 	'title' => esc_html__( 'Location for modal drop-down menu', 'red-explorers' ),
			// 	//Must provide key => value pairs for options
			// 	'options' => array(
			// 		'1' => 'Viewport',
			// 		'2' => 'Heder menu',
			// 	),
			// 	'default' => '1',
			// ),
			// array(
			// 	'id' => 'modal_menu_side',
			// 	'type' => 'button_set',
			// 	'title' => __( 'Side for modal drop-down menu', 'red-explorers' ),
			// 	'desc' => __( 'Your modal menu will be from the indicated side ', 'red-explorersr' ),
			// 	//Must provide key => value pairs for options
			// 	'options' => array(
			// 		'1' => 'left',
			// 		'2' => 'right',
			// 	),
			// 	'default' => '1',
			// ),
		),
	)
);