<div class="rmbt-full-width rmbt-header-red-explorers-full-width">

   <div class="rmbt-header-red-explorers-full-width__bg">
      <div class="wrap-img">
         <?php echo rmbt_redux_img( 'rmbt-header_img-bg', 'rmbt-header_img-bg_alt' ) ?>
      </div>
   </div>
   <header class="rmbt-container rmbt-header-red-explorers <?php echo $args['class'] ?>">

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

      <div class="rmbt-header-red-explorers__row rmbt-header-red-explorers-title-row">

         <div class="rmbt-header-red-explorers__col rmbt-header-red-explorers-col">
            <div class="rmbt-header-red-explorers-col__title">
               <?php echo $args['title'] ?>
            </div>
         </div>
      </div>
   </header>
</div>