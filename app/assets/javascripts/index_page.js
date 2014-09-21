var Question = {

  bindevents: function() {
    $(".vote_button").on("click", this.renderHighestVoted)
    $(".recent_button").on("click", this.renderMostRecent)
    $(".trending_button").on("click", this.renderTrending)
  },

  renderHighestVoted: function() {
    $(".recent").hide()
    $(".trending").hide()
    $(".vote").slideDown(1000)
  },

  renderMostRecent: function() {
    $(".vote").hide()
    $(".trending").hide()
    $(".recent").slideDown(1000)
  },

  renderTrending: function() {
    $(".vote").hide()
    $(".recent").hide()
    $(".trending").slideDown(1000)
  }

}

$(document).ready(function() {
  $(".trending").hide()
  $(".vote").hide()
  Question.bindevents();
})