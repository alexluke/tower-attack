define [
    'sprite'
    'texture'
], (Sprite, Texture) ->
    class Minion extends Sprite
        constructor: (x, y) ->
            super new Texture('minion'), x, y
