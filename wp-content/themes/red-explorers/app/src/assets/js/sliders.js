if (document.querySelector('.rmbt-swiper')) {
  let swiperParam = new Swiper('.rmbt-swiper', {
    direction: 'horizontal',

    centerInsufficientSlides: true,
    loop: true,
    speed: 500,
    autoplay: {
      delay: 5000,
    },

    slidesPerView: 7,
  });
}
