define [
    'sprite'
    'texture'
], (Sprite, Texture) ->
    class TowerSection extends Sprite
        constructor: (x, y) ->
            super new Texture('tower-section'), x, y
            @createButton = Texture.create 80, 80, (renderer) ->
                renderer.drawRect '#000000', 0, 0, 80, 80
                renderer.drawRect '#ffffff', 4, 4, 72, 72

                minionTexture = new Texture 'minion'
                renderer.drawTexture minionTexture, 40 - minionTexture.width / 2, 40 - minionTexture.height / 2, minionTexture.width, minionTexture.height

        draw: (renderer) ->
            super renderer

            renderer.drawTexture @createButton, @x + @texture.renderWidth / 2 - @createButton.renderWidth / 2, @y + @texture.renderHeight - @createButton.renderHeight - 5, @createButton.renderWidth, @createButton.renderHeight
