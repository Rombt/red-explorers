if (document.querySelector('.rmbt-swiper')) {
  swiperParam = new Swiper('.rmbt-swiper', {
    direction: 'horizontal',
    // pagination: {
    //   el: '.rmbt-swiper__pagination',
    //   clickable: true,
    //   renderBullet: function (index, className) {
    //     return (
    //       '<span class="' +
    //       className +
    //       '">  <span class="swiper-pagination__center"> </span> </span>'
    //     );
    //   },
    // },

    centerInsufficientSlides: true,
    loop: true,
    speed: 100,
    // autoplay: {
    //   delay: 5000,
    // },

    slidesPerView: 7,
  });
}
