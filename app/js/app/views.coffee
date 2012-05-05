$ ->
  class AppName.TitleView extends Backbone.View
    template: JST['templates/title']
    
    render: ->
      $(@el).html(@template)
      @
