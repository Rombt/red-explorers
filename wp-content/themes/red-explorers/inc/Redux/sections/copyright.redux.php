<?php
defined( 'ABSPATH' ) || exit;


// Copyright settings start
Redux::set_section(
	$opt_name,
	array(
		'title' => esc_html__( 'Copyright settings', RMBT_TEXT_DOMAIN_THEME ),
		'desc' => esc_html__( 'Add a description of your copyright ownership here', RMBT_TEXT_DOMAIN_THEME ),
		'id' => 'settings_copyright',
		'customizer_width' => '400px',
		// 'icon'             => 'el el-network',
		'fields' => array(
			array(
				'id' => 'rmbt-copyright',
				'type' => 'textarea',
				'title' => esc_html__( 'Copyright', RMBT_TEXT_DOMAIN_THEME ),
				'default' => esc_html__( '© RedExplorers. All rights reserved' ),
			),
			array(
				'id' => 'rmbt-copyright-terms',
				'type' => 'text',
				'title' => esc_html__( 'Link To Your Terms Page', RMBT_TEXT_DOMAIN_THEME ),
			),
			array(
				'id' => 'rmbt-copyright-privacy',
				'type' => 'text',
				'title' => esc_html__( 'Link To Your Privacy Page', RMBT_TEXT_DOMAIN_THEME ),
			),
			array(
				'id' => 'rmbt-copyright-site-map',
				'type' => 'text',
				'title' => esc_html__( 'Link To Your Site Map Page', RMBT_TEXT_DOMAIN_THEME ),
			),
		),
	)

);

// Terms   |   Privacy   |   Site Map