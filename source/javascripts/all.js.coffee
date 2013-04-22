class Gridwax
  constructor: ->
    @createEvents()

  createEvents: ->
    _self = @
    $('body').find("[data-type='track']").click (e) ->
      console.log(e)
      e.preventDefault()
      _gaq.push(['_trackEvent', 'Social', 'Click', "#{$(this).data('name')}"]);
      _gaq.push -> _self.setURL($(e.currentTarget))

  setURL: ($el) -> location.href = $el.attr('href') unless $el.data('redirect') == "false"


window.gridwax = new Gridwax()
