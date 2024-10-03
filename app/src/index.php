<?php get_header(); ?>



<div class="rmbt-full-width">
	<div class="rmbt-container">
		<div class="rmbt-row">
			<?php get_sidebar() ?>

			<main class="rmbt-main">
				<?php get_template_part( 'template-parts\parts\section-0\section-0', '0' ); ?>

			</main>
		</div>
	</div>
</div>

<?php get_template_part( 'template-parts/components/pagination' ); ?>



<?php get_footer();