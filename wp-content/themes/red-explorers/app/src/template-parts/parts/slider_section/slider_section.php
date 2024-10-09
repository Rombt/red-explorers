<div class="rmbt-full-width rmbt-slider-section-full-width">
   <!-- <section class="rmbt-container rmbt-slider-section"> -->

   <div class="rmbt-slider-section__row rmbt-slider-section-head">

      <?php
			$args = array(
				'post_type' => 'post',
				'posts_per_page' => 9,
				'orderby' => 'comment_count',
				'order' => 'DESC',
			);

			$query = new WP_Query( $args );
			$arr_post_id = [];
			foreach ( $query->posts as $post ) {
				$arr_post_id[] = $post->ID;
			}
			?>


      <div class="rmbt-swiper swiper">
         <div class="swiper-wrapper">
            <?php foreach ( $arr_post_id as $post_id ) : ?>
            <div class="swiper-slide">
               <div class="wrap-img rmbt-swiper__wrap-img">
                  <?php echo get_the_post_thumbnail( $post_id, 'thumbnail' ); ?>
               </div>
            </div>
            <?php endforeach; ?>
         </div>
         <div class="rmbt-swiper__pagination"></div>
      </div>



   </div>

   <!-- </section> -->
</div>