// alert once only, the first page load
// $(function () {
//   alert('jquery loaded')
// })

$(document).on('turbolinks:load', function () {
  $('.static').ready(function () {
    // check if we're at static pages
    // load on static pages views
    alert('run ajax for static views only')
  })

  $('.posts').ready(function () {
    // check if we're at posts pages
    // load on posts views
    alert('run ajax for posts views only')
  })
})
