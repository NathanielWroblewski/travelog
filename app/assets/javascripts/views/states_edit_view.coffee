window.Passages or= {}

class Passages.StatesEditView extends Backbone.View

  initialize: ->
    @$('.sortable').sortable()

  el: '#states-edit'

  events:
    'click .submit-sortable': 'updateOrdering'

  updateOrdering: ->
    ordering = @fetchOrder()
    @submitOrdering ordering

  fetchOrder: ->
    _.map @$('.trip-img'), (e, i) ->
      [i, $(e).data('id')]

  submitOrdering: (ordering) ->
    state = $('div[data-state-abbr]').data 'state-abbr'
    $.post('/states/' + state,
      data: JSON.stringify(ordering)
    ).success (response) ->
      if response.success then alert 'updated' else alert 'error'
