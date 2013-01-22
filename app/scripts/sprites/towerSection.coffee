define [
    'sprite'
    'texture'
], (Sprite, Texture) ->
    class TowerSection extends Sprite
        constructor: (x, y) ->
            super new Texture('tower-section'), x, y
