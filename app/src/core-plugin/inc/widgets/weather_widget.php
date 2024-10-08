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
<form method="post" class="rmbt-weather-widget">
   <label for="city">Enter City:</label>
   <input type="text" id="city" name="city"
      value="<?php echo isset( $_POST['city'] ) ? esc_attr( $_POST['city'] ) : ''; ?>" />
   <input id="rmbt-weather-widget-submit" type="submit" value="Get Weather" />
</form> <?php

		if ( $_SERVER['REQUEST_METHOD'] == 'POST' && ! empty( $_POST['city'] ) ) {
			$city = sanitize_text_field( $_POST['city'] );
			$this->get_weather( $city );
		}

		echo $args['after_widget'];
	}

	public function update( $new_instance, $old_instance ) {
		$instance = array();
		$instance['title'] = ( ! empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';
		return $instance;
	}

	public function form( $instance ) {
		$title = ! empty( $instance['title'] ) ? $instance['title'] : 'Weather Widget';
		?>
<p>
   <label for="<?php echo $this->get_field_id( 'title' ); ?>">Title:</label>
   <input type="text" id="<?php echo $this->get_field_id( 'title' ); ?>"
      name="<?php echo $this->get_field_name( 'title' ); ?>" value="<?php echo esc_attr( $title ); ?>" />
</p>
<?php
	}

	private function get_weather( $city ) {
		$api_key = 'your_api_key';
		$api_url = "http://api.openweathermap.org/data/2.5/weather?q={$city}&appid={$api_key}&units=metric";

		$response = wp_remote_get( $api_url );

		if ( is_array( $response ) && ! is_wp_error( $response ) ) {
			$body = wp_remote_retrieve_body( $response );
			$data = json_decode( $body );

			if ( $data->cod == 200 ) {
				// Вывод данных о погоде
				echo '<p>City: ' . esc_html( $data->name ) . '</p>';
				echo '<p>Temperature: ' . esc_html( $data->main->temp ) . '°C</p>';
				echo '<p>Weather: ' . esc_html( $data->weather[0]->description ) . '</p>';
			} else {
				echo '<p>Weather data not available for this city.</p>';
			}
		} else {
			echo '<p>Unable to retrieve weather data.</p>';
		}
	}
}

// Регистрация виджета
function register_weather_widget() {
	register_widget( 'Weather_Widget' );
}
add_action( 'widgets_init', 'register_weather_widget' );