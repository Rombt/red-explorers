<?php



function add_custom_button_for_destination() {
	$screen = get_current_screen();

	if ( $screen->post_type == 'destination' && $screen->base == 'edit' ) {
		?>
<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function() {
   var addNewButton = document.querySelector('.page-title-action');
   if (addNewButton) {
      var customButton = document.createElement('a');
      customButton.href = '#';
      customButton.id = 'generate-demo-content';
      customButton.classList.add('page-title-action');
      customButton.innerHTML = 'Generate demo content';

      addNewButton.parentNode.insertBefore(customButton, addNewButton.nextSibling);
   }
});
</script> <?php
	}
}
add_action( 'admin_head', 'add_custom_button_for_destination' );