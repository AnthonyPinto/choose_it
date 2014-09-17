window.ChooseIt = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  
  initialize: function() {
    new ChooseIt.Routers.Router({$rootEl: $('div.content')});
    Backbone.history.start();
  }
};

$(document).ready(function(){
  ChooseIt.initialize();
});
