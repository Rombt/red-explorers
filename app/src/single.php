<?php get_header(); ?>



<div class="wrapper-section single-wrapper-section">
   <div class="rmbt-full-width rmbt-single-full-width">
      <section class="rmbt-container rmbt-single">
         <div class="rmbt-single__row">



            <?php if ( have_posts() ) :
					while ( have_posts() ) :
						the_post(); ?>

            <article id="post-<?php the_ID(); ?>" <?php post_class( 'rmbt-single__col' ); ?>>

               <header class="entry-header">
                  <h1 class="entry-title"><?php the_title(); ?></h1>
               </header>

               <div class="entry-meta">
                  <p>Published on <?php echo get_the_date(); ?> by <?php the_author(); ?></p>
               </div>

               <?php if ( has_post_thumbnail() ) : ?>
               <div class="post-thumbnail">
                  <?php the_post_thumbnail(); ?>
               </div>
               <?php endif; ?>

               <div class="entry-content">
                  <?php the_content(); ?>
               </div>

               <div class="page-links">
                  <?php wp_link_pages(); ?>
               </div>

               <footer class="entry-footer">
                  <div class="post-categories">
                     <?php _e( 'Posted in: ' );
									the_category( ', ' ); ?>
                  </div>
                  <div class="post-tags">
                     <?php the_tags( 'Tags: ', ', ', '' ); ?>
                  </div>
               </footer>

               <nav class="post-navigation">
                  <div class="nav-previous"><?php previous_post_link(); ?></div>
                  <div class="nav-next"><?php next_post_link(); ?></div>
               </nav>


               <?php if ( comments_open() || get_comments_number() ) :
								comments_template();
							endif; ?>

            </article>

            <?php endwhile; // Конец цикла
				else :
					// Если постов не найдено
					echo '<p>No posts found.</p>';
				endif; ?>




         </div>
      </section>
   </div>
</div>





<?php get_template_part( 'template-parts/parts/slider_section/slider_section' ); ?>
<?php get_template_part( 'template-parts/parts/subscribe/subscribe' ); ?>

<?php get_footer();