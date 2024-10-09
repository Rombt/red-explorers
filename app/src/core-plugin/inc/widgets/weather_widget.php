<?php

class Weather_Widget extends WP_Widget {

	public function __construct() {
		parent::__construct(
			'weather_widget',
			'Weather Widget',
			array( 'description' => 'A widget that shows the weather for a specified city' )
		);
	}

	public function widget( $args, $instance ) {
		echo $args['before_widget'];

		if ( ! empty( $instance['title'] ) ) {
			echo $args['before_title'] . apply_filters( 'widget_title', $instance['title'] ) . $args['after_title'];
		}

		?>
		<form method="post" id="rmbt-weather-widget">
			<label for="city">Enter City:</label>
			<input type="text" id="city" name="city"
				value="<?php echo isset( $_POST['city'] ) ? esc_attr( $_POST['city'] ) : ''; ?>" />
			<input id="rmbt-weather-widget-submit" type="submit" value="Get Weather" />
		</form> <?php


		echo $args['after_widget'];
	}

	public function update( $new_instance, $old_instance ) {
		$instance = array();
		$instance['title'] = ( ! empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';
		$instance['api_key'] = ( ! empty( $new_instance['api_key'] ) ) ? strip_tags( $new_instance['api_key'] ) : '';
		update_option( 'weather_widget_api_key', $instance['api_key'] );
		return $instance;
	}

	public function form( $instance ) {
		$title = ! empty( $instance['title'] ) ? $instance['title'] : 'Weather Widget';
		$api_key = ! empty( $instance['api_key'] ) ? $instance['api_key'] : '';
		?>
		<p>
			<label for="<?php echo $this->get_field_id( 'title' ); ?>">Title:</label>
			<input type="text" id="<?php echo $this->get_field_id( 'title' ); ?>"
				name="<?php echo $this->get_field_name( 'title' ); ?>" value="<?php echo esc_attr( $title ); ?>" />
		</p>
		<p>
			<label for="<?php echo $this->get_field_id( 'api_key' ); ?>">API Key:</label>
			<input type="text" id="<?php echo $this->get_field_id( 'api_key' ); ?>"
				name="<?php echo $this->get_field_name( 'api_key' ); ?>" value="<?php echo esc_attr( $api_key ); ?>" />
		</p>
		<?php
	}

}

// Регистрация виджета
function register_weather_widget() {
	register_widget( 'Weather_Widget' );
}
add_action( 'widgets_init', 'register_weather_widget' );




function get_weather() {

	$api_key = get_option( 'weather_widget_api_key' );

	$city = urlencode( $_POST['city'] );
	$api_url = "https://api.openweathermap.org/data/2.5/weather?q={$city}&appid={$api_key}&units=metric";
	$response = wp_remote_get( $api_url );

	if ( is_array( $response ) && ! is_wp_error( $response ) ) {

		$body = wp_remote_retrieve_body( $response );
		$data = json_decode( $body );

		if ( $data->cod == 200 ) {
			wp_send_json_success( $body );
		} else {
			$error = new WP_Error( '500', 'error undefined' );
			wp_send_json_error( $error );
		}

	} else {
		$error = new WP_Error( '500', 'error undefined' );
		wp_send_json_error( $error );
	}
	wp_reset_postdata();

	wp_die();

}

add_action( 'wp_ajax_get_weather', 'get_weather' );
add_action( 'wp_ajax_nopriv_get_weather', 'get_weather' );