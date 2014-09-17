ChooseIt.Collections.Posts = Backbone.Collection.extend({
  model: ChooseIt.Models.Post,
  url: "api/posts"
  
});

ChooseIt.Collections.posts = new ChooseIt.Collections.Posts();