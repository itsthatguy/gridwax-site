class Gridwax
  constructor: ->
    @createEvents()

  createEvents: ->
    _self = @
    $('body').find("[data-type='track']").click (e) ->
      e.preventDefault()
      _gaq.push(['_trackEvent', 'Social', 'Click', "#{$(this).data('name')}"])
      setTimeout ( => _self.setURL(this)), 200

  setURL: (url) ->
    location.href = url
    return

window.gridwax = new Gridwax()
