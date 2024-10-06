<?php


function add_custom_location_columns( $columns ) {
	$columns['show_destination_page'] = __( 'Show on the destination page', 'red-explorers' );
	return $columns;
}
add_filter( 'manage_edit-location_columns', 'add_custom_location_columns' );

function display_custom_location_column( $content, $column_name, $term_id ) {
	if ( 'show_destination_page' === $column_name ) {
		$content = render_custom_columns(
			'show_on_the_destination_page',
			'check-show_destination_page',
			$term_id,
			'_rmbt_show_destination_page_metabox',
			'_rmbt_' . $column_name . '_metabox'
		);
	}

	return $content;
}
add_filter( 'manage_location_custom_column', 'display_custom_location_column', 10, 3 );

function render_custom_columns( $name_field, $class_checkbox, $term_id, $nonce, $id_nonce ) {

	wp_nonce_field( $nonce, $id_nonce );

	echo '<input type="checkbox" data-term-id="' . $term_id
		. '" data-field-name="' . $name_field . '" '
		. ( get_term_meta( $term_id, $name_field ) ? 'checked' : '' )
		. ' class="' . $class_checkbox . '">';
}