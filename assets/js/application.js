document.addEventListener('DOMContentLoaded', (event) => {
  Array.prototype.forEach.call(document.getElementsByClassName('lightgallery'), function(el) {
    lightGallery(el, {
      selector: "figure",
      closable: true,
      hideBarsDelay: 1500,
      subHtmlSelectorRelative: true
    })
  })
})
