class window.TitleView extends Backbone.View
  template: ->
    _.template($("#title-template").html())
  
  render: ->
    $(@el).html(@template())
    @
