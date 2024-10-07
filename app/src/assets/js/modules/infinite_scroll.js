jQuery(function ($) {
  let pattern = /\/destination\/?$/;
  if (!pattern.test(window.location.pathname)) {
    return;
  }

  let page = 2;
  const rmbtDestinationRow = $('.rmbt-destination__row');
  let isFetching = false;

  function loading() {
    if (
      $(window).scrollTop() + $(window).height() >=
        rmbtDestinationRow.offset().top + rmbtDestinationRow.outerHeight() - 100 &&
      page &&
      !isFetching
    ) {
      isFetching = true;
      $.ajax({
        url: redExplorersAppData.ajaxUrl,
        type: 'post',
        data: {
          action: 'infinite_scroll',
          paged: page,
        },
        success: function (data) {
          rmbtDestinationRow.append(data);
          page++;
          isFetching = false;
        },
        error: function (data) {
          page = false;
          isFetching = false;
          console.log('data.data = ', data);
        },
      });
    }
  }

  let throttleScroll = throttle(loading, 200);

  $(window).scroll(throttleScroll);

  function throttle(func, limit) {
    let inThrottle;
    return function () {
      if (!inThrottle) {
        func.apply(this, arguments);
        inThrottle = true;
        setTimeout(() => (inThrottle = false), limit);
      }
    };
  }
});
