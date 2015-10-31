// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  // comment form is hidden until user clicks on add comment button
  return $("#show-form").on('click', function(e) {
    e.preventDefault();
    return $('#comment-form').slideToggle();
  });

});
