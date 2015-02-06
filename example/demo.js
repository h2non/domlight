$(document).ready(init);

function init() {
  var focusElement = null

  $('.show').on('click', show);
  $('.hide').on('click', hide);

  function show() {
    var selector = $(this).attr('data-selector');
    var options = getOptions();
    focusElement = Domlight($(selector), options);
  }

  function hide() {
    Domlight.hideAll();
  }
}

function getOptions() {
  return {
    fadeDuration: parseInt($('#fade-duration').val()),
    hideOnClick: $('#hide-on-click').is(':checked'),
    hideOnESC: $('#hide-on-esc').is(':checked'),
    findOnResize: $('#find-on-resize').is(':checked')
  }
}
