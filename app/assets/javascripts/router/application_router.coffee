window.Passages or= {}

class Passages.Router extends Backbone.Router

  initialize: ->

  start: ->
    Backbone.history.start
      pushState: true

  routes:
    '': 'statesIndex'
    'state/:abbr': 'statesShow'
    'states/:abbr/edit': 'statesEdit'

  statesIndex: ->
    new Passages.StatesIndexView

  statesShow: ->
    new Passages.StatesShowView

  statesEdit: ->
    new Passages.StatesEditView

$ ->
  passages = new Passages.Router
  passages.start()
