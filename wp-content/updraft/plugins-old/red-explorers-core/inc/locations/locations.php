<?php



function create_taxonomy() {

	register_taxonomy( 'location', [ 'destination' ], [ 
		'label' => '', // определяется параметром $labels->name
		'labels' => [ 
			'name' => 'Locations',
			'singular_name' => 'Location',
			'search_items' => 'Search Locations',
			'all_items' => 'All Locations',
			'view_item ' => 'View Location',
			'parent_item' => 'Parent Location',
			'parent_item_colon' => 'Parent Location:',
			'edit_item' => 'Edit Location',
			'update_item' => 'Update Location',
			'add_new_item' => 'Add New Location',
			'new_item_name' => 'New Location Name',
			'menu_name' => 'Location',
			'back_to_items' => '← Back to Location',
		],
		'description' => '', // описание таксономии
		'public' => true,
		'hierarchical' => false,

		'rewrite' => true,
		'capabilities' => array(),
		'meta_box_cb' => null,
		'show_admin_column' => false,
		'show_in_rest' => null,
		'rest_base' => null,
	] );
}
add_action( 'init', 'create_taxonomy' );


function create_custom_post_type() {
	$labels = array(
		'name' => 'destination',
		'singular_name' => 'Destination',
		'menu_name' => 'Destinations',
		'name_admin_bar' => 'Destination',
		'add_new' => 'Add New',
		'add_new_item' => 'Add New Destination',
		'edit_item' => 'Edit Destination',
		'new_item' => 'New Destination',
		'view_item' => 'View Destination',
		'all_items' => 'All Destinations',
		'search_items' => 'Search Destinations',
		'not_found' => 'No destinations found.',
		'not_found_in_trash' => 'No destinations found in Trash.',
	);

	$args = array(
		'labels' => $labels,
		'public' => true,
		'has_archive' => true,
		'supports' => array( 'title', 'editor', 'thumbnail', 'comments' ),
		'rewrite' => array( 'slug' => 'destinations' ),
		'show_in_rest' => true,
	);

	register_post_type( 'destination', $args );
}
add_action( 'init', 'create_custom_post_type' );



/* DEMO content */
// function add_location_terms() {
// $locations = [ 
// 	'Italy',
// 	'France',
// 	'Spain',
// 	'Japan',
// 	'USA',
// 	'Thailand',
// 	'Vietnam',
// 	'India',
// 	'Morocco',
// 	'Europe',
// 	'Asia',
// 	'America',
// 	'Africa',
// 	'Australia',
// 	'Mediterranean',
// 	'Southeast Asia',
// 	'North America',
// 	'Latin America',
// 	'Eastern Europe',
// 	'Rome',
// 	'Paris',
// 	'Barcelona',
// 	'Tokyo',
// 	'New York',
// 	'Bangkok',
// 	'Ho Chi Minh City',
// 	'Delhi',
// 	'Marrakech',
// ];

// 	foreach ( $locations as $location ) {
// 		if ( ! term_exists( $location, 'location' ) ) {
// 			wp_insert_term( $location, 'location' );
// 		}
// 	}
// }
// add_action( 'init', 'add_location_terms' );