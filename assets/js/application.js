document.addEventListener('DOMContentLoaded', (event) => {
  for (el of document.getElementsByClassName('splide')) {
    new Splide(el, {pagination: false}).mount();
  }
})
