<?php


add_action( 'wp_ajax_generate_content', 'rmbt_generate_content' );
add_action( 'wp_ajax_nopriv_generate_content', 'rmbt_generate_content' );
function rmbt_generate_content() {
	$request = $_POST['request'];

	// log_in_file( $request );

	if ( $request !== 'regenerate-content' ) {
		return;
	}

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

	$countries = [ 
		"Франция" => "https://example.com/images/france.jpg",
		"Италия" => "https://example.com/images/italy.jpg",
		"Испания" => "https://example.com/images/spain.jpg",
		"Япония" => "https://example.com/images/japan.jpg",
		"Канада" => "https://example.com/images/canada.jpg",
		"Бразилия" => "https://example.com/images/brazil.jpg",
		"Австралия" => "https://example.com/images/australia.jpg",
		"Германия" => "https://example.com/images/germany.jpg",
		"Индия" => "https://example.com/images/india.jpg",
		"Южная Африка" => "https://example.com/images/southafrica.jpg",
		"Мексика" => "https://example.com/images/mexico.jpg",
		"Аргентина" => "https://example.com/images/argentina.jpg",
		"Китай" => "https://example.com/images/china.jpg",
		"Великобритания" => "https://example.com/images/uk.jpg",
		"Таиланд" => "https://example.com/images/thailand.jpg",
		"Россия" => "https://example.com/images/russia.jpg",
		"Новая Зеландия" => "https://example.com/images/newzealand.jpg",
		"Швейцария" => "https://example.com/images/switzerland.jpg",
	];

	function getRandomImage( $country ) {
		global $countries;
		return $countries[ $country ];
	}

	for ( $i = 0; $i < 10; $i++ ) {
		$country = array_rand( $countries );

		$date = generateRandomDate( "2022-01-01", "2024-12-31" );
		$title = "Путешествие по " . $country;
		$text = generateRandomText();
		$image = getRandomImage( $country );

		$post_data = [ 
			'post_title' => $title,
			'post_content' => $text,
			'post_status' => 'publish',
			'post_author' => 1,
			'post_category' => [ 1 ],
			'post_date' => $date,
			'meta_input' => [ 
				'country' => $country,
				'image_url' => $image,
			],
		];

		$post_id = wp_insert_post( $post_data );

		if ( $post_id ) {
			echo "Пост '{$title}' добавлен с ID {$post_id}\n";
		} else {
			echo "Ошибка добавления поста '{$title}'\n";
		}
	}












	// wp_send_json_success( $request );
	wp_die();
}