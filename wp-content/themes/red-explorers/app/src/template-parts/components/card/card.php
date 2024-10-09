<div class="rmbt-card <?php echo $args['class'] ?>">
   <a href="<?php echo $args['link_to_post'] ?>" class="wrap-img rmbt-card__img">
      <?php echo $args['tag-img'] ?>
   </a>

   <div class="rmbt-card__body">
      <div class="rmbt-card__date">
         <?php echo $args['date'] ?>
      </div>
      <h3 class="rmbt-card__title">
         <?php echo $args['title'] ?>
      </h3>
      <?php if ( $args['text'] !== '' ) : ?>
      <p class="rmbt-card__text">
         <?php echo $args['text'] ?>
      </p>
      <?php endif ?>
      <div class="rmbt-card__footer">


         <div class="rmbt-card__category">
            <svg>
               <use xlink:href="<?php echo get_template_directory_uri() ?>/assets/img/icons/sprite.svg#map-point"></use>
            </svg>
            <?php echo $args['category']; ?>

            <?php if ($args['category-count']) {
					echo '(' . $args['category-count'] . ')';
				} ?>

         </div>
         <div class="rmbt-card__comment">

            <svg>
               <use xlink:href="<?php echo get_template_directory_uri() ?>/assets/img/icons/sprite.svg#comment"></use>
            </svg>
            comment <span> (<?php echo $args['comments_number'] ?>) </span>
         </div>
      </div>
   </div>


</div>