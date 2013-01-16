class CssZapette

  constructor: ->
    @initialize()


  initialize: ->
    document.addEventListener('keyup', @bindKey, false)

    body = document.getElementsByTagName('body')[0]
    @items = body.getElementsByTagName('*')


  bindKey: (evt)=>
    evt.preventDefault()
    @playPause() if (evt.keyCode == 13)


  playPause: =>
    for i of @items
      item = @items[i]
      if @items[i].style?.webkitAnimationPlayState?
        style = @items[i].style

        if style.webkitAnimationPlayState == 'paused'
          style.webkitAnimationPlayState = 'running'
        else
          style.webkitAnimationPlayState = 'paused'

    return

window.CssZapette = CssZapette

cssZapette = new CssZapette
