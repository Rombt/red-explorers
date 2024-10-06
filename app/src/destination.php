<?php
/* Template Name: destination  page */
?>


<?php get_header(); ?>



<?php get_template_part( 'template-parts/parts/want_to_go/want_to_go' ); ?>
<?php get_template_part( 'template-parts/parts/locations_block/locations_block' ); ?>


<div class="wrapper-section destination-wrapper-section">
	<div class="rmbt-full-width rmbt-destination-full-width">
		<section class="rmbt-container rmbt-destination">
			<div class="rmbt-destination__row">
				<?php
				$args = array(
					'post_type' => 'destination',
					'posts_per_page' => 10,
				);
				$destination_query = new WP_Query( $args );
				$text = '';

				if ( $destination_query->have_posts() ) :
					while ( $destination_query->have_posts() ) :
						$destination_query->the_post();

						if ( has_post_thumbnail() ) {
							$image = get_the_post_thumbnail();
						} else {
							$image = wp_get_attachment_image( 532, 'rmbt_post-img' );
						}

						get_template_part( 'template-parts/components/card/card', null, [ 
							'class' => 'rmbt-card-destination',
							'tag-img' => $image,
							'date' => get_the_date(),
							'title' => get_the_title(),
							'text' => $text,
							'category' => get_the_category()[0],
							'comments_number' => get_comments_number(),
							'link_to_post' => get_the_permalink(),
						] );

					endwhile;
					wp_reset_postdata();
				else :
					echo '<p>No destinations found.</p>';
				endif;
				?>

			</div>
		</section>
	</div>
</div>


<?php get_template_part( 'template-parts/parts/slider_section/slider_section' ); ?>
<?php get_template_part( 'template-parts/parts/subscribe/subscribe' ); ?>

<?php get_footer();