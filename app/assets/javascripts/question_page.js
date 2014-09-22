$(document).ready(function() {
  bindEvents();
  $('.question-comments-container').hide();
  $('.answer-comments-container').hide();
  $('.question-comment-form').hide();
  $('.answer-comment-form').hide();
  $('.answer-form').hide();
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
  $('.create-answer').click(function() {
    $(this).parent().find(".answer-form").toggle('slow')
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
    var paramsData = {content: $(this).parent().find('.input-content').val(),
                      type: "Question"};
    var request = $.ajax({url: $(this).attr("action"), type: "POST", data: paramsData, context: this})
    request.done(function(data) {
      $(this).parent().find(".create-question-comment").before(data);
      $(this).parent().find(".question-comment-form").find(".input-content").val("");
      $(this).parent().find(".question-comment-form").toggle();
    })
  })

  $(".answer-comment-form").on("submit", function(event) {
    event.preventDefault();
    var paramsData = {content: $(this).parent().find('.input-content').val(),
                      type: "Answer"};
    var request = $.ajax({url: $(this).attr("action"), type: "POST", data: paramsData, context: this})
    request.done(function(data) {
      $(this).parent().find(".create-answer-comment").before(data);
      $(this).parent().find(".answer-comment-form").find(".input-content").val("");
      $(this).parent().find(".answer-comment-form").toggle();
    })
  })

  $(".answer-form").on("submit", function(event) {
    event.preventDefault();
    var request = $.ajax({url: $(this).attr("action"), type: "POST", data: $(this).serialize(), context: this});
    request.done(function(data) {
      location.reload();
    })
  })

}
