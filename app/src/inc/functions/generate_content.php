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
		"Франция",
		"Италия",
		"Испания",
		"Япония",
		"Канада",
		"Бразилия",
		"Австралия",
		"Германия",
		"Индия",
		"Южная Африка",
		"Мексика",
		"Аргентина",
		"Китай",
		"Великобритания",
		"Таиланд",
		"Уругвай",
		"Новая Зеландия",
		"Швейцария",
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