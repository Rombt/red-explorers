<?php

class Recent_post extends WP_Widget {

	public function __construct() {
		parent::__construct(
			'recent_post',
			__( 'Recent Posts', RMBT_TEXT_DOMAIN_THEME ),
			array( 'description' => __( 'This widget displays recent posts.', RMBT_TEXT_DOMAIN_THEME ), )
		);
	}

	public function widget( $args, $instance ) {
		echo $args['before_widget'];

		if ( ! empty( $instance['title'] ) ) {
			echo $args['before_title'] . apply_filters( 'widget_title', $instance['title'] ) . $args['after_title'];
		}

		$recent_posts = wp_get_recent_posts( array(
			'numberposts' => 5,
			'post_status' => 'publish',
		) );

		if ( ! empty( $recent_posts ) ) {
			echo '<ul>';
			foreach ( $recent_posts as $post ) {
				echo '<li>';

				if ( has_post_thumbnail( $post['ID'] ) ) {
					echo '<a href="' . get_permalink( $post['ID'] ) . '"  class ="rmbt-recent-post-img" >';
					echo get_the_post_thumbnail( $post['ID'], 'thumbnail' );
					echo '</a>';
				}

				echo '<a href="' . get_permalink( $post['ID'] ) . '"class ="rmbt-recent-post-text" >' . '<p>' . get_the_date( '', $post['ID'] ) . '</p>';
				echo esc_html( $post['post_title'] );
				echo '</a>';

				echo '</li>';
			}
			echo '</ul>';
		} else {
			echo '<p>' . __( 'Recent Posts are ', RMBT_TEXT_DOMAIN_THEME ) . '</p>';
		}

		echo $args['after_widget'];
	}

	// Форма настроек виджета в админке
	public function form( $instance ) {
		$title = ! empty( $instance['title'] ) ? $instance['title'] : __( 'Recent Posts', RMBT_TEXT_DOMAIN_THEME );
		?>
<p>
   <label for="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>"><?php _e( 'Recent Posts:' ); ?></label>
   <input class="widefat" id="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>"
      name="<?php echo esc_attr( $this->get_field_name( 'title' ) ); ?>" type="text"
      value="<?php echo esc_attr( $title ); ?>">
</p>
<?php
	}

	// Сохранение настроек виджета
	public function update( $new_instance, $old_instance ) {
		$instance = array();
		$instance['title'] = ( ! empty( $new_instance['title'] ) ) ? sanitize_text_field( $new_instance['title'] ) : '';

		return $instance;
	}
}

// Регистрация виджета
function register_recent_post() {
	register_widget( 'Recent_post' );
}
add_action( 'widgets_init', 'register_recent_post' );