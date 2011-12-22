jQuery ->
  class AppView extends Backbone.View
    el: '#wrap'
    template: _.template($('#title-template').html())
    render: ->
      $(@el).html @template()
      @

  @app = window.app ? {}
  @app.AppView = AppView
