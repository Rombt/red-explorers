<div class="rmbt-full-width rmbt-footer-full-width">
   <footer class="rmbt-container rmbt-footer">
      <div class="rmbt-footer__row rmbt-footer-row-top">
         <div class="rmbt-footer__col rmbt-footer-col__logo">
            <div class="wrap-img">
               <?php echo rmbt_redux_img( 'rmbt-footer-logo', 'rmbt-footer-logo_alt' ) ?>
            </div>
         </div>
         <div class="rmbt-footer__col rmbt-footer-col__horizontal-nav">
            <?php if ( has_nav_menu( 'footer_horizontal_nav' ) ) { ?>
            <div class="cont-horizont-menu">
               <?php wp_nav_menu(
							array(
								'theme_location' => 'footer_horizontal_nav',
								'container' => 'nav',
							)
						); ?>
            </div>
            <?php } ?>
         </div>
      </div>
      <div class="rmbt-footer__row rmbt-footer-row-middle">
         <div class="rmbt-footer__col rmbt-footer-col__text">
            <?php echo rmbt_get_redux_field( 'rmbt-footer_section-text', 1 ) ?>
         </div>
         <div class="rmbt-footer__col rmbt-footer-col__contacts rmbt-contacts">
            <p class='rmbt-contacts__address'><?php echo rmbt_get_redux_field( 'rmbt-address', 1 ) ?></p>
            <a href='tel:<?php echo rmbt_phone_number_clear_redux( rmbt_get_redux_field( 'rmbt-manager-1-phone', 1 ) ) ?>'
               class='rmbt-contacts__phone'><span>T:</span><?php echo rmbt_get_redux_field( 'rmbt-manager-1-phone', 1 ) ?></a>
            <a href='mailto:<?php echo rmbt_get_redux_field( 'rmbt-manager-1-email', 1 ) ?>'
               class='rmbt-contacts__mail'><span>E:</span><?php echo rmbt_get_redux_field( 'rmbt-manager-1-email', 1 ) ?></a>
            <a href='<?php echo home_url() ?>' class='rmbt-contacts__site'><span>W:</span><?php echo home_url() ?></a>

         </div>
         <div class="rmbt-footer__col rmbt-footer-col__nav">
            <!-- 	использовать flex column и flex-wrap: wrap -->
            <?php if ( has_nav_menu( 'footer_horizontal_nav' ) ) { ?>
            <div class="cont-vertical-menu">
               <?php wp_nav_menu(
							array(
								'theme_location' => 'footer_nav',
								'container' => 'nav',
							)
						); ?>
            </div>
            <?php } ?>
         </div>
      </div>
      <div class="rmbt-footer__row rmbt-footer-row-bottom">
         <div class="rmbt-footer__col rmbt-footer-col__logo-dev">
            <div class="wrap-img">
               <?php echo rmbt_redux_img( 'rmbt-footer-logo-dev', 'rmbt-footer-logo-dev_alt' ) ?>
            </div>
         </div>
         <div class="rmbt-footer__col rmbt-footer-col__social-networks">
            <?php get_template_part( 'template-parts\components\social_networks' ); ?>
         </div>
         <div class="rmbt-footer__col rmbt-footer-col__copyright rmbt-copyright">
            <div class="rmbt-copyright__text">
               <?php if ( rmbt_get_redux_field( 'rmbt-copyright', 1 ) !== '' ) : ?>
               <?php echo rmbt_get_redux_field( 'rmbt-copyright', 1 ) ?>
               <?php endif ?>
            </div>
            <?php if ( rmbt_get_redux_field( 'rmbt-copyright-terms', 1 ) !== '' ) : ?>
            <a href="<php echo rmbt_get_redux_field( 'rmbt-copyright-terms', 1 )>">Terms</a>
            <?php endif ?>
            <?php if ( rmbt_get_redux_field( 'rmbt-copyright-privacy', 1 ) !== '' ) : ?>
            <a href="<php echo rmbt_get_redux_field( 'rmbt-copyright-privacy', 1 )>">Privacy</a>
            <?php endif ?>
            <?php if ( rmbt_get_redux_field( 'rmbt-copyright-site-map', 1 ) !== '' ) : ?>
            <a href="<php echo rmbt_get_redux_field( 'rmbt-copyright-site-map', 1 )>">Site Map</a>
            <?php endif ?>
         </div>
      </div>
   </footer>
</div>


</div> <!--  end rmbt-page-wrap  -->
<?php wp_footer(); ?>
</body>

</html>