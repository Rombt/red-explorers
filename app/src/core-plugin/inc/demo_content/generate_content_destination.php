<?php

function generate_content_destination() {

	$locations = get_terms( array(
		'taxonomy' => 'location',
		'fields' => 'all',
		'hide_empty' => false,
	) );

	$image_path = wp_upload_dir()['basedir'] . '/2024/10/coming-soon_5.jpg';
	$attachment = array(
		'guid' => wp_upload_dir()['url'] . '/' . basename( $image_path ),
		'post_mime_type' => mime_content_type( $image_path ),
		'post_title' => preg_replace( '/\.[^.]+$/', '', basename( $image_path ) ),
		'post_content' => '',
		'post_status' => 'inherit',
	);
	$attachment_id = wp_insert_attachment( $attachment, $image_path, 0 );

	function generateRandomDate( $startDate, $endDate ) {
		$timestampStart = strtotime( $startDate );
		$timestampEnd = strtotime( $endDate );
		$randomTimestamp = mt_rand( $timestampStart, $timestampEnd );
		return date( "Y-m-d", $randomTimestamp );
	}

	function generateRandomText( $minWords = 30, $maxWords = 50 ) {
		$lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam accumsan justo ut nulla ornare, nec tincidunt justo consectetur. Donec sit amet risus dapibus, consequat lacus ut, tincidunt nulla.";
		$wordsArray = explode( " ", $lorem );
		shuffle( $wordsArray );

		$wordCount = rand( $minWords, $maxWords );
		return implode( " ", array_slice( $wordsArray, 0, $wordCount ) ) . ".";
	}

	for ( $i = 0; $i < 10; $i++ ) {
		$random_index = mt_rand( 0, count( $locations ) - 1 );
		$place = $locations[ $random_index ];

		$date = generateRandomDate( "2022-01-01", "2024-12-31" );
		$title = "Traveling around " . $place->name;
		$text = generateRandomText();

		$post_data = [ 
			'post_title' => $title,
			'post_content' => $text,
			'post_status' => 'publish',
			'post_type' => 'destination',
			'post_author' => 1,
			'post_date' => $date,
			'meta_input' => [ 
				'place' => $place->name,
			],
		];

		$post_id = wp_insert_post( $post_data );

		if ( $post_id ) {
			wp_set_object_terms( $post_id, $place->term_id, 'location' );
			if ( $attachment_id ) {
				set_post_thumbnail( $post_id, $attachment_id );
			}

		} else {
			$error = new WP_Error( '500', 'ERROR of added the destination.' );
			wp_send_json_error( $error );
		}
	}

	wp_send_json_success();
}