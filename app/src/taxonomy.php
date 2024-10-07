<?php get_header(); ?>

<div class="wrapper-section destination-wrapper-section">
	<div class="rmbt-full-width rmbt-destination-full-width">
		<section class="rmbt-container rmbt-destination">
			<div class="rmbt-destination__row">

				<?php if ( have_posts() ) : ?>

					<?php $term_description = term_description();
					if ( ! empty( $term_description ) ) : ?>
						<div class="taxonomy-description"> <?php echo $term_description ?> </div>
					<?php endif; ?>

					<div class="taxonomy-post-list">
						<?php
						while ( have_posts() ) :
							the_post();
							?>
							<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
								<header class="entry-header">
									<h2 class="entry-title">
										<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
									</h2>
								</header>
								<?php if ( has_post_thumbnail() ) : ?>
									<div class="post-thumbnail">
										<a href="<?php the_permalink(); ?>">
											<?php the_post_thumbnail( 'thumbnail' ); ?>
										</a>
									</div>
								<?php endif; ?>
								<div class="entry-summary">
									<?php the_excerpt(); ?>
								</div>
							</article>
						<?php endwhile; ?>
					</div>

					<!-- Пагинация -->
					<?php
					the_posts_pagination( array(
						'prev_text' => __( 'Previous', RMBT_TEXT_DOMAIN_THEME ),
						'next_text' => __( 'Next', RMBT_TEXT_DOMAIN_THEME ),
					) );
					?>

				<?php else : ?>
					<p><?php _e( 'No posts found for this term.', RMBT_TEXT_DOMAIN_THEME ); ?></p>
				<?php endif; ?>









			</div>
		</section>
	</div>
</div>


<?php get_template_part( 'template-parts/parts/slider_section/slider_section' ); ?>
<?php get_template_part( 'template-parts/parts/subscribe/subscribe' ); ?>

<?php get_footer();