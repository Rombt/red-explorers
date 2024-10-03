<section class="rmbt-social-networks">
	<div class="rmbt-social-networks__row">
		<?php if ( rmbt_redux_img( 'rmbt-social-networks_fb_img-id', 'rmbt-social-networks-fb_img-alt' ) !== '' ) : ?>
			<a href="<?php echo rmbt_get_redux_field( 'rmbt-social-networks_fb-link' ) ?>">
				<?php echo rmbt_redux_img(
					'rmbt-social-networks_fb_img-id',
					'rmbt-social-networks-fb_img-alt'
				) ?>
			</a>
		<?php endif ?>
		<?php if ( rmbt_redux_img( 'rmbt-social-networks_tw_img-id', 'rmbt-social-networks-tw_img-alt' ) !== '' ) : ?>
			<a href="<?php echo rmbt_get_redux_field( 'rmbt-social-networks_tw-link' ) ?>">
				<?php echo rmbt_redux_img(
					'rmbt-social-networks_tw_img-id',
					'rmbt-social-networks-tw_img-alt'
				) ?>
			</a>
		<?php endif ?>
		<?php if ( rmbt_redux_img( 'rmbt-social-networks_instagram_img-id', 'rmbt-social-networks_instagram_img-alt' ) !== '' ) : ?>
			<a href="<?php echo rmbt_get_redux_field( 'rmbt-social-networks_instagram-link' ) ?>">
				<?php echo rmbt_redux_img(
					'rmbt-social-networks_instagram_img-id',
					'rmbt-social-networks_instagram_img-alt'
				) ?>
			</a>
		<?php endif ?>
		<?php if ( rmbt_redux_img( 'rmbt-social-networks-youtube_img-id', 'rmbt-social-networks-youtube_img-alt' ) !== '' ) : ?>
			<a href="<?php echo rmbt_get_redux_field( 'rmbt-social-networks_youtube-link' ) ?>">
				<?php echo rmbt_redux_img(
					'rmbt-social-networks-youtube_img-id',
					'rmbt-social-networks-youtube_img-alt'
				) ?>
			</a>
		<?php endif ?>
		<?php if ( rmbt_redux_img( 'rmbt-social-networks-linkedin_img-id', 'rmbt-social-networks-linkedin_img-alt' ) !== '' ) : ?>
			<a href="<?php echo rmbt_get_redux_field( 'rmbt-social-networks_linkedin-link' ) ?>">
				<?php echo rmbt_redux_img(
					'rmbt-social-networks-linkedin_img-id',
					'rmbt-social-networks-linkedin_img-alt'
				) ?>
			</a>
		<?php endif ?>
	</div>
</section>