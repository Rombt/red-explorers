<?php
$terms = get_terms( array(
	'taxonomy' => 'location',
	'hide_empty' => false,
) );

$filtered_terms = [];

if ( ! empty( $terms ) && ! is_wp_error( $terms ) ) {

	foreach ( $terms as $term ) {
		$checkbox_value = get_term_meta( $term->term_id, 'show_on_the_destination_page', true );
		if ( $checkbox_value == '1' ) {
			$filtered_terms[] = $term;
		}
	}
}
?>


<div class="wrapper-section categories-block-wrapper-section">
   <div class="rmbt-full-width rmbt-categories-block-full-width">
      <section class="rmbt-container rmbt-categories-block">
         <div class="rmbt-categories-block__row">
            <ul class="rmbt-categories-block__col">



               <?php if ( empty( $filtered_terms ) ) {
						echo 'Нет отмеченных терминов.';
					} else {
						foreach ( $filtered_terms as $term ) {
							echo '<li> <a href="' . get_term_link( $term ) . '">' . esc_html__( $term->name, RMBT_TEXT_DOMAIN_THEME ) . '</a></li>';
						}
					} ?>

            </ul>
         </div>
      </section>
   </div>
</div>