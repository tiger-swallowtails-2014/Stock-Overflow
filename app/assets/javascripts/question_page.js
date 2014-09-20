$(document).ready(function() {
  $(".question-comments-container").hide();
  $(".question-container").on("click", ".question-comments-container", function() {
    console.log($(this))
    $(this).Toggle();
  })
})
