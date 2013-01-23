define [
    'renderers/canvas'
], (CanvasRenderer) ->
    class Texture
        constructor: (el) ->
            if typeof el == 'string'
                @data = document.getElementById el
                throw "Cannot load image from #{ el }" unless @data

                @width = @data.naturalWidth
                @height = @data.naturalHeight
                @renderWidth = @data.width
                @renderHeight = @data.height
            else
                @data = el

    Texture.create = (width, height, callback) ->
        canvas = document.createElement 'canvas'
        canvas.width = width
        canvas.height = height

        callback new CanvasRenderer canvas
        
        texture = new Texture canvas
        texture.width = width
        texture.height = height
        texture.renderWidth = width / 2
        texture.renderHeight = height / 2

        return texture

    return Texture
