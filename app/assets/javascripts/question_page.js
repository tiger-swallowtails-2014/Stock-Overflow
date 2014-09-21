$(document).ready(function() {
  bindEvents();
  $('.question-comments-container').hide();
  // $('.answer-comments-container').hide();
})

function bindEvents() {
  $('.show-question-comments').click(function() {
    $('.question-comments-container').toggle('slow');
  })
  // $('.show-answer-comments').click(function() {
  //   $('.answer-comments-container').toggle('slow');
  // })
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
        $(".question-vote-count").html("Votes: " + data.count);
      } else if (data.type === "Answer") {
        $(this).parent().find(".answer-vote-count").html("Votes: " + data.count);
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
        $(".question-vote-count").html("Votes: " + data.count);
      } else if (data.type === "Answer") {
        $(this).parent().find(".answer-vote-count").html("Votes: " + data.count);
      }
    })
  })

  $('.answers-container').on("click", ".show-answer-comments", function(event) {
    event.preventDefault();
    var request = $.ajax({url: $(this).attr("href"), type: "GET"});
    request.done(function() {
      console.log("success");
    })
  })
}
