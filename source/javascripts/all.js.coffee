class GW
  constructor: ->
    @createEvents()

  createEvents: ->
    _self = @
    $('body').find("[data-type='track']").click (e) ->
      e.preventDefault()
      _name = $(this).data('name')
      _properties = $(this).data('properties')
      _destination = if _properties.destination then _properties.destination else ""
      _location = if _properties.location then _properties.location else ""
      _gaq.push(['_trackEvent', 'Social', "#{_name}: #{_destination} #{_location}"])
      mixpanel.track "#{_name}: #{_destination} #{_location}", _properties, => _self.setURL(this.href)

  setURL: (url) ->
    setTimeout ( => location.href = url), 100
    return

window.gw = new GW()
