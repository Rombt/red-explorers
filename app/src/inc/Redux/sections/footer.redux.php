<?php
defined( 'ABSPATH' ) || exit;


Redux::set_section(
	$opt_name,
	array(
		'title' => esc_html__( 'Footer', RMBT_TEXT_DOMAIN_THEME ),
		'id' => 'rmbt-settings_footer',
		'desc' => esc_html__( 'Settings Footer Site', RMBT_TEXT_DOMAIN_THEME ),
		'customizer_width' => '450',
		'subsections' => true,
		// 'icon'             => 'el el-home',
		'fields' => array(

			array(
				'id' => 'rmbt-footer-logo',
				'type' => 'media',
				'url' => true,
				'title' => esc_html__( 'This picture will use as  a logo', RMBT_TEXT_DOMAIN_THEME ),
				'compiler' => 'true',
				'preview_size' => 'full',
			),
			array(
				'id' => 'rmbt-footer-logo_alt',
				'type' => 'text',
				'title' => esc_html__( 'Description for logo picture', RMBT_TEXT_DOMAIN_THEME ),
				'default' => esc_html__( 'logo of site', RMBT_TEXT_DOMAIN_THEME ),
			),
			array(
				'id' => 'rmbt-footer_section-text',
				'type' => 'textarea',
				'title' => esc_html__( 'Text of footer', RMBT_TEXT_DOMAIN_THEME ),
			),

			array(
				'id' => 'rmbt-footer-logo-dev',
				'type' => 'media',
				'url' => true,
				'title' => esc_html__( 'This picture will use as  a developer logo', RMBT_TEXT_DOMAIN_THEME ),
				'compiler' => 'true',
				'preview_size' => 'full',
			),
			array(
				'id' => 'rmbt-footer-logo-dev_alt',
				'type' => 'text',
				'title' => esc_html__( 'Description for developer logo picture', RMBT_TEXT_DOMAIN_THEME ),
				'default' => esc_html__( 'Developer logo', RMBT_TEXT_DOMAIN_THEME ),
			),

		),
	)
);