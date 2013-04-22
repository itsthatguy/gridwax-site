class GW
  constructor: ->
    @createEvents()

  createEvents: ->
    _self = @
    $('body').find("[data-type='track']").click (e) ->
      e.preventDefault()

      # _gaq.push(['_trackEvent', 'Social', "Click: #{$(this).data('name')}"])
      mixpanel.track "Click: #{$(this).data('name')}", {}, => _self.setURL(this.href)

  setURL: (url) ->
    console.log url
    setTimeout ( => location.href = url), 100
    return

window.gw = new GW()
