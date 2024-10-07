<?php get_header(); ?>



<div class="rmbt-full-width">
	<div class="rmbt-container">
		<div class="rmbt-row">
			<?php get_sidebar() ?>

			<main class="rmbt-main">


				<?php
				$i_post = 0;
				if ( have_posts() ) {
					while ( have_posts() ) :
						the_post();

						$category = trim( get_the_category()[0]->name );

						if ( $i_post === 0 ) {
							$class = 'first-post rmbt-shadow';
							$text = get_the_excerpt();
							$i_post++;
						} else {
							$class = 'rmbt-shadow';
							$text = '';
						}

						if ( has_post_thumbnail() ) {
							$image = get_the_post_thumbnail();
						} else {
							$image = wp_get_attachment_image( 532, 'rmbt_post-img' );
						}


						get_template_part( 'template-parts/components/card/card', null, [ 
							'class' => $class,
							'tag-img' => $image,
							'date' => get_the_date(),
							'title' => get_the_title(),
							'text' => $text,
							'category' => $category,
							'comments_number' => get_comments_number(),
							'link_to_post' => get_the_permalink(),
						] );

					endwhile;
				} else {
					//   get_template_part('partials/notfound');
				}
				?>


			</main>
		</div>
	</div>
</div>

<?php //  get_template_part( 'template-parts/components/pagination' ); ?>


<?php get_template_part( 'template-parts/parts/slider_section/slider_section' ); ?>
<?php get_template_part( 'template-parts/parts/subscribe/subscribe' ); ?>



Mediterranean


<?php get_footer();