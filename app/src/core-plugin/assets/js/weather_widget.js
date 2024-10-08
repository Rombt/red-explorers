jQuery(document).ready(function ($) {
  const formWidget = $('.rmbt-weather-widget');

  if (!formWidget) {
    return;
  }

  $('#rmbt-weather-widget-submit').on('click', function () {
    $.ajax({
      url: ajaxurl,
      type: 'POST',
      data: {
        action: 'get-weather',
        //   post_type_page: postTypePage,
      },
      success: function (response) {
        console.log('response.success = ', response.success);
        if (response.success) {
          // console.log('Meta updated successfully!');
        } else {
          // console.log('Failed to update meta.');
        }
      },
    });
  });
});
