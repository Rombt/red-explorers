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

						echo get_the_title();
						echo '<br>';
						echo get_the_excerpt();
						echo '<br>';
						echo get_the_post_thumbnail();
						echo '<br>';
						echo get_the_permalink();

						echo '<br>===================================================================<br>';

						// get_template_part( 'template-parts/components/card_news_strings', null, [		// here your card template
						// 	'title' => get_the_title(),
						// 	'text' => get_the_excerpt(),
						// 	'tag-img' => get_the_post_thumbnail(),
						// 	'link_read_more_href' => get_the_permalink(),
						// ] );
				
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