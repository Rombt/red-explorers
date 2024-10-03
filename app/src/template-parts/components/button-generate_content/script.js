jQuery(document).ready(function ($) {
  const $button = $('.rmbt-button-generate-content');

  $button.click(function (e) {
    e.preventDefault();

    $.ajax({
      url: redExplorersAppData.ajaxUrl,
      type: 'POST',
      data: {
        action: 'generate_content',
      },
      success: function (response) {
        console.log(response);
      },
      error: function (xhr, status, error) {
        // console.log('Ошибка при обновлении значения поля:', error);
      },
    });
  });
});
