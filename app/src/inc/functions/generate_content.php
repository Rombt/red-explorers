<?php


add_action( 'wp_ajax_generate_content', 'rmbt_generate_content' );
add_action( 'wp_ajax_nopriv_generate_content', 'rmbt_generate_content' );
function rmbt_generate_content() {
	$data = '000000000';

	wp_send_json_success( $data );
	wp_die();
}