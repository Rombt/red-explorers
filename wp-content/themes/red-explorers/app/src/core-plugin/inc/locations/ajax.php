<?php


function save_custom_location_meta() {

	if ( ! isset( $_POST['nonce'] ) || ! wp_verify_nonce( $_POST['nonce'], '_rmbt_show_destination_page_metabox' ) ) {
		wp_send_json_error( 'Invalid nonce' );
	}

	if ( ! current_user_can( 'manage_categories' ) ) {
		wp_send_json_error( 'access denied' );
	}


	$term_id = intval( $_POST['term_id'] );
	$field_name = 'show_on_the_destination_page';
	$value = intval( $_POST['value'] );

	if ( $value ) {
		update_term_meta( $term_id, $field_name, true );
	} else {
		delete_term_meta( $term_id, $field_name );
	}

	wp_send_json_success();
}

add_action( 'wp_ajax_save_custom_location_meta', 'save_custom_location_meta' );