$ ->
  class AppName.Router extends Backbone.Router
    routes:
      ".*": "main"

    main: ->
      @titleView ||= new AppName.TitleView el: $('#wrap')[0]
      @titleView.render()
