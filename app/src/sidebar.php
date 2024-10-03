<?php


if ( ! is_active_sidebar( 'rmbt_blog_sidebar' ) ) {
	return;
}

?>

<aside id='secondary' class='widget-area rmbt-blog-sidebar'>
   <?php dynamic_sidebar( 'rmbt_blog_sidebar' ) ?>
</aside>