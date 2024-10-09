<?php
defined( 'ABSPATH' ) || exit;


Redux::set_section(
	$opt_name,
	array(
		'title' => esc_html__( 'want-to-go-section', 'restaurant-site' ),
		'id' => 'settings_want-to-go-section',
		'desc' => esc_html__( 'Settings header site', 'restaurant-site' ),
		'customizer_width' => '450',
		'subsections' => true,
		'fields' => array(
			array(
				'id' => 'rmbt-want-to-go-title',
				'type' => 'text',
				'title' => esc_html__( 'Title of "Where do you want to go" Section', RMBT_TEXT_DOMAIN_THEME ),
			),
			array(
				'id' => 'rmbt-want-to-go-text',
				'type' => 'textarea',
				'title' => esc_html__( 'Text of "Where do you want to go" Section', RMBT_TEXT_DOMAIN_THEME ),
			),
		),
	)
);