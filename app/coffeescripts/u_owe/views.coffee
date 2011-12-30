jQuery ->

  class AppView extends Backbone.View
    el: '#wrap'
    initialize: (options) ->
      @subviews = [
        new TitleView
        new NewContractView
        ]
      #@collection.bind 'reset', @render, @
    render: ->
      $(@el).empty()
      $(@el).append subview.render().el for subview in @subviews
      @
  
  class TitleView extends Backbone.View
    template: _.template($('#title-template').html())
    render: ->
      $(@el).html @template()
      @

  class NewContractView extends Backbone.View
    tagName: 'form'
    template: _.template($('#new-contract-template').html())
    events:
      'keypress #new-contract': 'saveOnEnter'
      'focusout #new-contract': 'hideWarning'
    render: ->
      $(@el).html @template()
      @
    saveOnEnter: ->
      if (event.keyCode is 13)
        event.preventDefault()
        @flashWarning()
    hideWarning: ->
      $('#warning').hide()
      $('#new-contract-container').removeClass('warning')
    flashWarning: ->
      $('#new-contract-container').addClass('warning')
      $('#warning').show()

  @app = window.app ? {}
  @app.AppView = AppView
