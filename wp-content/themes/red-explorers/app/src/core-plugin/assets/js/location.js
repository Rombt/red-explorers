jQuery(document).ready(function ($) {
  $('.check-show_destination_page').on('change', function () {
    var termId = $(this).data('term-id');
    var fieldName = $(this).data('field-name');
    var isChecked = $(this).is(':checked') ? 1 : 0;
    var nonce = $('#_rmbt_show_destination_page_metabox').val();

    $.ajax({
      url: ajaxurl,
      type: 'POST',
      data: {
        action: 'save_custom_location_meta',
        term_id: termId,
        field_name: fieldName,
        value: isChecked,
        nonce: nonce,
      },
      success: function (response) {
        if (response.success) {
          // console.log('Meta updated successfully!');
        } else {
          // console.log('Failed to update meta.');
        }
      },
    });
  });
});
