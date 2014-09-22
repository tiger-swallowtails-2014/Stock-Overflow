$(document).ready(function() {
  bindEvents();
  $('.question-comments-container').hide();
  $('.answer-comments-container').hide();
  $('.question-comment-form').hide();
})

function bindEvents() {
  $('.show-question-comments').click(function() {
    $('.question-comments-container').toggle('slow');
  })
  $('.show-answer-comments').bind("click", function() {
    $(this).parent().find(".answer-comments-container").toggle('slow');
  })
  $('.create-comment').click(function() {
    $('.question-comment-form').toggle('slow');
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

  // $(".create-comment").click(functon() {
  //   $(".")
  // })
  // $(".question-comments-container").on("click", ".create-comment", function(event) {
  //   event.preventDefault();
  //   var request = $.ajax({url: $(this).attr("href"), type: "GET", context: this})
  //   request.done(function(data) {
  //     console.log("success");
  //     console.log(data);
  //     $(this).parent().append(data)
  //   })
  // })

  // $(".question-comment-submit").on("click", function(event) {
  //   debugger
  //   event.preventDefault();
  //   console.log("clicked");
  //   // var request = $.ajax({url: $(this).attr("href"), type: "GET"})
  //   // request.done(function() {
  //   //   console.log("success");
  //   // })
  // })
}
