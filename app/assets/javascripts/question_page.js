$(document).ready(function() {
  bindEvents();
  $('.question-comments-container').hide();
  $('.answer-comments-container').hide();
  $('.question-comment-form').hide();
  $('.answer-comment-form').hide();
})

function bindEvents() {
  $('.show-question-comments').click(function() {
    $('.question-comments-container').toggle('slow');
  })
  $('.show-answer-comments').bind("click", function() {
    $(this).parent().find(".answer-comments-container").toggle('slow');
  })
  $('.create-question-comment').click(function() {
    $('.question-comment-form').toggle('slow');
  })
  $('.create-answer-comment').bind("click", function() {
    $(this).parent().find(".answer-comment-form").toggle('slow');
  })
  $('body').on("click", ".upvote", function(event) {
    event.preventDefault();
    if ($(this).attr("href").indexOf("answers") > -1) {
      var context_type = "Answer";
    } else {
      var context_type = "Question";
    }
    var request = $.ajax({url: $(this).attr("href"), type: "GET", data: {context_type: context_type}, context: this})
    request.done(function(data) {
      if (data.type === "Question") {
        $(".question-vote-count").html(data.count);
      } else if (data.type === "Answer") {
        $(this).parent().find(".answer-vote-count").html(data.count);
      }
    })
  })

  $('body').on("click", ".downvote", function(event) {
    event.preventDefault();
    if ($(this).attr("href").indexOf("answers") > -1) {
      var context_type = "Answer";
    } else {
      var context_type = "Question";
    }
    var request = $.ajax({url: $(this).attr("href"), type: "DELETE", data: {context_type: context_type}, context: this})
    request.done(function(data) {
      if (data.type === "Question") {
        $(".question-vote-count").html(data.count);
      } else if (data.type === "Answer") {
        $(this).parent().find(".answer-vote-count").html(data.count);
      }
    })
  })

  $(".question-comment-form").on("submit", function(event) {
    event.preventDefault();
    var button = $(".create-question-comment");
    var form = $(".question-comment-form");
    var paramsData = {content: $(this).parent().find('.input-content').val(),
                      type: "Question"};
    var request = $.ajax({url: $(this).attr("action"), type: "POST", data: $(this).serialize(), context: this})
    request.done(function(data) {
      button.before(data);
      form.toggle();
    })
  })

  $(".answer-comment-form").on("submit", function(event) {
    event.preventDefault();
    var button = $(".create-answer-comment");
    var form = $(".answer-comment-form");
    var paramsData = {content: $(this).parent().find('.input-content').val(),
                      type: "Answer"};
    var request = $.ajax({url: $(this).attr("action"), type: "POST", data: paramsData, context: this})
    request.done(function(data) {
      button.before(data);
      form.toggle();
    })
  })

}
