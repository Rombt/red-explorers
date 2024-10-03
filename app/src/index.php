<?php get_header(); ?>



<div class="rmbt-full-width">
	<div class="rmbt-container">
		<div class="rmbt-row">
			<?php get_sidebar() ?>

			<main class="rmbt-main">



				<?php
				if ( have_posts() ) {
					while ( have_posts() ) :
						the_post();

						get_template_part( 'template-parts/components/card/card', null, [		// here your card template
							'tag-img' => get_the_post_thumbnail(),
							'date' => get_the_date(),
							'title' => get_the_title(),
							'category' => get_the_category()[0],
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

<?php get_template_part( 'template-parts/components/pagination' ); ?>



<?php get_footer();