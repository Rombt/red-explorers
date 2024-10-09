import './modules/functions.js';
import './modules/dynamic_adapt.js';
import './modules/popup.js';
import './modules/spoiler.js';
import './modules/tabs.js';
import './modules/arrowsInputNumberStyle.js';
import './modules/HorizontalMenu.js';
import './sliders.js';
import './modules/infinite_scroll.js';

const scrollDownIcon = document.querySelector('.scroll-down__icon');
if (scrollDownIcon) {
  const scrollHeight = Math.max(
    document.body.scrollHeight,
    document.documentElement.scrollHeight,
    document.body.offsetHeight,
    document.documentElement.offsetHeight,
    document.body.clientHeight,
    document.documentElement.clientHeight
  );
  document.querySelector('.scroll-down__icon').addEventListener('click', e => {
    window.scrollBy({
      top: scrollHeight,
      behavior: 'smooth',
    });
  });
}
