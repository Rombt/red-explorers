<div class="rmbt-card">
   <a href="<?php echo $args['link_to_post'] ?>"></a>
   <div class="wrap-img rmbt-card__img">
      <?php echo $args['tag-img'] ?>
   </div>
   <div class="rmbt-card__date">
      <?php echo $args['date'] ?>
   </div>
   <div class="rmbt-card__title">
      <?php echo $args['title'] ?>
   </div>
   <div class="rmbt-card__category">
      <?php print_r( $args['category']->name ) ?>

   </div>
   <div class="rmbt-card__comment">
      <?php echo $args['comments_number'] ?>
   </div>
</div>