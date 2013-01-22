define ->
    class CanvasRenderer
        constructor: (canvasEl) ->
            @canvas = document.getElementById canvasEl
            if not @canvas.getContext
                throw 'No 2d canvas support'

            @ctx = @canvas.getContext '2d'

        drawTexture: (texture, x, y, width, height) ->
            @ctx.drawImage texture.data, 0, 0, texture.width, texture.height, x, y, width, height
