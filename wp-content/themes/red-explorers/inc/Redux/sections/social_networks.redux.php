<?php
defined( 'ABSPATH' ) || exit;


Redux::set_section(
	$opt_name,
	array(
		'title' => esc_html__( 'Social Networks Settings', RMBT_TEXT_DOMAIN_THEME ),
		'id' => 'settings_social-networks',
		'customizer_width' => '400px',
		// 'icon'             => 'el el-network',
		'fields' => array(

			array(
				'id' => 'rmbt-social-networks_fb-section-start',
				'type' => 'section',
				'title' => esc_html__( 'Facebook section', RMBT_TEXT_DOMAIN_THEME ),
				'indent' => true,
			),
			array(
				'id' => 'rmbt-social-networks_fb-link',
				'type' => 'text',
				'title' => esc_html__( 'Facebook link', RMBT_TEXT_DOMAIN_THEME ),
				'default' => esc_url( 'https://www.facebook.com/' ),
			),
			array(
				'id' => 'rmbt-social-networks_fb_img-id',
				'type' => 'media',
				'url' => true,
				'title' => esc_html__( 'Facebook icon', RMBT_TEXT_DOMAIN_THEME ),
				'compiler' => 'true',
				'preview_size' => 'full',
			),

			array(
				'id' => 'rmbt-social-networks-fb_img-alt',
				'type' => 'text',
				'title' => esc_html__( 'Image description for FaceBook icon', RMBT_TEXT_DOMAIN_THEME ),
				'default' => esc_html__( '', RMBT_TEXT_DOMAIN_THEME ),
			),


			array(
				'id' => 'rmbt-social-networks_fb-section-end',
				'type' => 'section',
				'indent' => false,
			),

			array(
				'id' => 'rmbt-social-networks_tw-section-start',
				'type' => 'section',
				'title' => esc_html__( 'Twitter section', RMBT_TEXT_DOMAIN_THEME ),
				'indent' => true,
			),
			array(
				'id' => 'rmbt-social-networks_tw-link',
				'type' => 'text',
				'title' => esc_html__( 'Twitter link', RMBT_TEXT_DOMAIN_THEME ),
				'default' => esc_url( 'https://www.facebook.com/' ),
			),
			array(
				'id' => 'rmbt-social-networks_tw_img-id',
				'type' => 'media',
				'url' => true,
				'title' => esc_html__( 'Twitter icon', RMBT_TEXT_DOMAIN_THEME ),
				'compiler' => 'true',
				'preview_size' => 'full',
			),

			array(
				'id' => 'rmbt-social-networks-tw_img-alt',
				'type' => 'text',
				'title' => esc_html__( 'Image description for Twitter icon', RMBT_TEXT_DOMAIN_THEME ),
				'default' => esc_html__( '', RMBT_TEXT_DOMAIN_THEME ),
			),


			array(
				'id' => 'rmbt-social-networks_tw-section-end',
				'type' => 'section',
				'indent' => false,
			),

			array(
				'id' => 'rmbt-social-networks_instagram-section-start',
				'type' => 'section',
				'title' => esc_html__( 'Instagram section', RMBT_TEXT_DOMAIN_THEME ),
				'indent' => true,
			),


			array(
				'id' => 'rmbt-social-networks_instagram-link',
				'type' => 'text',
				'title' => esc_html__( 'Instagram link', RMBT_TEXT_DOMAIN_THEME ),
				'default' => 'https://www.twitter.com/',
			),
			array(
				'id' => 'rmbt-social-networks_instagram_img-id',
				'type' => 'media',
				'url' => true,
				'title' => esc_html__( 'Instagram icon', RMBT_TEXT_DOMAIN_THEME ),
				'compiler' => 'true',
				'preview_size' => 'full',
			),

			array(
				'id' => 'rmbt-social-networks_instagram_img-alt',
				'type' => 'text',
				'title' => esc_html__( 'Image description for instagram icon', RMBT_TEXT_DOMAIN_THEME ),
				'default' => esc_html__( '', RMBT_TEXT_DOMAIN_THEME ),
			),

			array(
				'id' => 'rmbt-social-networks_instagram-section-end',
				'type' => 'section',
				'indent' => false,
			),

			array(
				'id' => 'rmbt-social-networks_youtube-section-start',
				'type' => 'section',
				'title' => esc_html__( 'Youtube section', RMBT_TEXT_DOMAIN_THEME ),
				'indent' => true,
			),

			array(
				'id' => 'rmbt-social-networks_youtube-link',
				'type' => 'text',
				'title' => esc_html__( 'Youtube link', RMBT_TEXT_DOMAIN_THEME ),
				'default' => esc_url( 'https://youtube.com/' ),
			),
			array(
				'id' => 'rmbt-social-networks-youtube_img-id',
				'type' => 'media',
				'url' => true,
				'title' => esc_html__( 'Youtube icon', RMBT_TEXT_DOMAIN_THEME ),
				'compiler' => 'true',
				'preview_size' => 'full',
			),
			array(
				'id' => 'rmbt-social-networks-youtube_img-alt',
				'type' => 'text',
				'title' => esc_html__( 'Image description for youtube icon', RMBT_TEXT_DOMAIN_THEME ),
				'default' => esc_html__( '', RMBT_TEXT_DOMAIN_THEME ),
			),

			array(
				'id' => 'rmbt-social-networks_youtube-section-end',
				'type' => 'section',
				'indent' => false,
			),


			array(
				'id' => 'rmbt-social-networks_linkedin-section-start',
				'type' => 'section',
				'title' => esc_html__( 'Linkedin section', RMBT_TEXT_DOMAIN_THEME ),
				'indent' => true,
			),

			array(
				'id' => 'rmbt-social-networks_linkedin-link',
				'type' => 'text',
				'title' => esc_html__( 'Linkedin link', RMBT_TEXT_DOMAIN_THEME ),
				'default' => esc_url( 'https://linkedin.com/' ),
			),
			array(
				'id' => 'rmbt-social-networks-linkedin_img-id',
				'type' => 'media',
				'url' => true,
				'title' => esc_html__( 'Linkedin icon', RMBT_TEXT_DOMAIN_THEME ),
				'compiler' => 'true',
				'preview_size' => 'full',
			),
			array(
				'id' => 'rmbt-social-networks-linkedin_img-alt',
				'type' => 'text',
				'title' => esc_html__( 'Image description for linkedin icon', RMBT_TEXT_DOMAIN_THEME ),
				'default' => esc_html__( '', RMBT_TEXT_DOMAIN_THEME ),
			),

			array(
				'id' => 'rmbt-social-networks_linkedin-section-end',
				'type' => 'section',
				'indent' => false,
			),

		),
	)

);