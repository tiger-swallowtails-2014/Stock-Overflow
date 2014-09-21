var Question = {

  bindevents: function() {
    $(".vote_button").on("click", this.renderHighestVoted)
    $(".recent_button").on("click", this.renderMostRecent)
    $(".trending_button").on("click", this.renderTrending)
  },

  renderHighestVoted: function() {
    $(".recent").hide()
    $(".trending").hide()
    $(".vote").show()
  },

  renderMostRecent: function() {
    $(".vote").hide()
    $(".trending").hide()
    $(".recent").show()
  },

  renderTrending: function() {
    $(".vote").hide()
    $(".recent").hide()
    $(".trending").show()
  }

}

$(document).ready(function() {
  $(".trending").hide()
  $(".vote").hide()
  Question.bindevents();
})