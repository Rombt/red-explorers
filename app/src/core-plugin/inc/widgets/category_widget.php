<?php
class Category_widget extends WP_Widget {

	public function __construct() {
		parent::__construct(
			'category_widget',
			__( 'Category Widget', RMBT_TEXT_DOMAIN_THEME ),
			array( 'description' => __( 'This widget displays your categories', RMBT_TEXT_DOMAIN_THEME ), )
		);
	}

	public function widget( $args, $instance ) {
		echo $args['before_widget'];

		if ( ! empty( $instance['title'] ) ) {
			echo $args['before_title'] . apply_filters( 'widget_title', $instance['title'] ) . $args['after_title'];
		}

		$categories = get_categories( array( 'number' => 7 ) );

		if ( ! empty( $categories ) ) {
			echo '<ul>';
			foreach ( $categories as $category ) {
				echo '<li>';
				echo '<a href="' . esc_url( get_category_link( $category->term_id ) ) . '">' . esc_html( $category->name ) . '</a>';
				echo '<span> (' . $category->count . ')</span>';
				echo '</li>';
			}
			echo '</ul>';
		} else {
			echo '<p>' . __( 'Categories are absent', RMBT_TEXT_DOMAIN_THEME ) . '</p>';
		}

		echo $args['after_widget'];
	}

	public function form( $instance ) {
		$title = ! empty( $instance['title'] ) ? $instance['title'] : __( 'Categories', RMBT_TEXT_DOMAIN_THEME );
		?>
		<p>
			<label for="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>"><?php _e( 'Title:' ); ?></label>
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
function register_category_widget() {
	register_widget( 'Category_widget' );
}
add_action( 'widgets_init', 'register_category_widget' );