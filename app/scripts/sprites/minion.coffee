define [
    'sprite'
    'texture'
], (Sprite, Texture) ->
    class Minion extends Sprite
        constructor: (x, y) ->
            super new Texture('minion'), x, y
            @speed =
                x: 20
                y: 0

        update: (delta) ->
            @x += @speed.x * delta
            @y += @speed.y * delta
