<div class="rmbt-full-width rmbt-header-red-explorers-full-width">

	<div class="rmbt-header-red-explorers-full-width__bg">
		<div class="wrap-img">
			<?php echo rmbt_redux_img( 'rmbt-header-blog_img-bg', 'rmbt-header_img-alt-bg' ) ?>
		</div>
	</div>
	<header class="rmbt-container rmbt-header-red-explorers">

		<div class="rmbt-header-red-explorers__row rmbt-header-red-explorers-top-row">

			<div class="rmbt-header-red-explorers__col rmbt-header-red-explorers-col-logo">
				<?php if ( has_custom_logo() ) : ?>
					<?php the_custom_logo(); ?>
				<?php endif ?>
			</div>

			<div class="rmbt-header-red-explorers__col rmbt-header-red-explorers-col-nav">
				<?php if ( has_nav_menu( 'header_nav' ) ) { ?>
					<div class="cont-horizont-menu">
						<?php wp_nav_menu(
							array(
								'theme_location' => 'header_nav',
								'container' => 'nav',
							)
						); ?>
					</div>
				<?php } ?>
			</div>

		</div>

		<div class="rmbt-header-red-explorers__row rmbt-header-red-explorers-title-row_blog">

			<div class="rmbt-header-red-explorers__col rmbt-header-red-explorers-col">
				<div class="rmbt-header-red-explorers-col__slogan">
					<?php echo rmbt_get_redux_field( 'rmbt-header-blog_slogan', 1 ) ?>
				</div>
				<div class="rmbt-header-red-explorers-col__title">
					<?php echo rmbt_get_redux_field( 'rmbt-header-blog_title', 1 ) ?>
				</div>
				<?php get_template_part( 'template-parts\components\button\button', null, [ 
					'href' => rmbt_get_redux_field( 'rmbt-header-blog_button_href', 1 ),
					'class' => '',
					'text' => rmbt_get_redux_field( 'rmbt-header-blog_button_title', 1 ),
				] ); ?>
				<div class="rmbt-header-red-explorers-col__scroll-down scroll-down">
					<div class="scroll-down__text">
						<?php echo rmbt_get_redux_field( 'rmbt-header-blog_scroll-down', 1 ) ?>
					</div>
					<div class="scroll-down__icon">
					</div>
				</div>
			</div>
		</div>
	</header>
</div>