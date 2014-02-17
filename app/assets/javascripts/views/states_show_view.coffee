window.Passages or= {}

class Passages.StatesShowView extends Backbone.View

  initialize: ->
    @unveilImages()

  el: '#states-show'

  unveilImages: ->
    @$('.trip-image').unveil 200, ->
      $(@).load ->
        @style.opacity = 1
        $('.trip-caption').css 'opacity', 1
