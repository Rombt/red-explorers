<?php
defined( 'ABSPATH' ) || exit;


Redux::set_section(
	$opt_name,
	array(
		'title' => esc_html__( 'subscribe-section', 'restaurant-site' ),
		'id' => 'settings_subscribe-section',
		'desc' => esc_html__( 'Settings header site', 'restaurant-site' ),
		'customizer_width' => '450',
		'subsections' => true,
		'fields' => array(
			array(
				'id' => 'rmbt-subscribe-text',
				'type' => 'text',
				'title' => esc_html__( 'Text of Subscribe Section', RMBT_TEXT_DOMAIN_THEME ),
			),
		),
	)
);