<?php

$countries = [ 
	"France",
	"Italy",
	"Spain",
	"Japan",
	"Canada",
	"Brazil",
	"Australia",
	"Germany",
	"India",
	"South Africa",
	"Mexico",
	"Argentina",
	"China",
	"United Kingdom",
	"Thailand",
	"Uruguay",
	"New Zealand",
	"Switzerland",
];






function generate_content_post() {

	$args = [ 
		'taxonomy' => 'category',
		'hide_empty' => 0,
	];

	$categories = get_categories( $args );

	$countries = [];
	foreach ( $categories as $category ) {
		if ( $category->cat_ID !== 1 ) {
			$countries[] = [ 
				'name' => $category->name,
				'id' => $category->term_id,
			];
		}
	}



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

		$random_index = mt_rand( 0, count( $countries ) - 1 );

		$country = $countries[ $random_index ]['name'];
		$category_id = $countries[ $random_index ]['id'];
		$date = generateRandomDate( "2022-01-01", "2024-10-07" );
		$title = "Traveling around " . $country;
		$text = generateRandomText();

		log_in_file( $country );

		$post_data = [ 
			'post_title' => $title,
			'post_content' => $text,
			'post_status' => 'publish',
			'post_author' => 1,
			'post_category' => array( $category_id ),
			'post_date' => $date,
			'meta_input' => [ 
				'country' => $country,
			],
		];

		$post_id = wp_insert_post( $post_data );

		if ( $post_id ) {
			if ( $attachment_id ) {
				set_post_thumbnail( $post_id, $attachment_id );
			}

		} else {
			$error = new WP_Error( '500', 'ERROR of added the post.' );
			wp_send_json_error( $error );
		}
	}

	wp_send_json_success();
}



// function create_custom_categories() {
// 	global $countries;

// 	foreach ( $countries as $category_name ) {
// 		if ( ! term_exists( $category_name, 'category' ) ) {
// 			wp_insert_term(
// 				$category_name,
// 				'category'
// 			);
// 		}
// 	}
// }
// add_action( 'init', 'create_custom_categories' );