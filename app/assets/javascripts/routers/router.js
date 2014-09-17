ChooseIt.Routers.Router = Backbone.Router.extend({
  routes: {
    "": "index"
  },
  
  initialize: function(options) {
    this.$rootEl = options.$rootEl;
  },
  
  index: function () {
    var posts = ChooseIt.Collections.posts
    posts.fetch()
  
    var indexView = new ChooseIt.Views.PostsIndex({collection: posts})
    this.$rootEl.html(indexView.render().$el)
  }
})