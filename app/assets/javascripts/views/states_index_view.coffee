window.Passages or= {}

class Passages.StatesIndexView extends Backbone.View

  initialize: ->
    @highlightVisitedStates()
    @getMapDimensions()
    $(window).on 'resize', =>
      @getMapDimensions()

  el: '#states-index'

  events:
    'click .visited': 'navigateToStatesShow'

  getMapDimensions: ->
    if Modernizr.mq 'only screen and (max-width: 640px)'
      @renderMap ($(window).width() - 50), 300
    else if Modernizr.mq 'only screen and (max-width: 1025px)'
      @renderMap $(window).width(), 500
    else
      @renderMap 959, 593

  highlightVisitedStates: ->
    visited_states = @$('div[data-visited-states]').data 'visited-states'
    for state in visited_states
      $('#' + state).attr 'class', 'visited state'

  navigateToStatesShow: (event) ->
    state_abbr = $(event.target).attr 'id'
    window.location.href = '/state/' + state_abbr

  renderMap: (width, height) ->
    @$('svg').attr
      'width':  width
      'height': height
