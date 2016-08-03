function makeBig() {
    $(this).removeClass('thumbnail');
    $(this).addClass('large-image')
}

function makeSmall() {
    $(this).removeClass('large-image')
    $(this).addClass('thumbnail')
}

$(document).ready(function() {
  $(document).on('mouseenter', '.image-link-image',  makeBig);
  $(document).on('mouseleave', '.image-link-image',  makeSmall);
});
