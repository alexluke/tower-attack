define [
    'game'
    'texture'
    'sprites/minion'
    'sprites/towerSection'
], (Game, Texture, Minion, TowerSection) ->
    class TowerAttack extends Game
        init: ->
            @backgroundTexture = new Texture 'background'
            @minion = new Minion 80, 420
            @towerSection = new TowerSection 10, 360

        draw: ->
            @renderer.drawTexture @backgroundTexture, 0, 0, @canvasWidth, @canvasHeight
            @towerSection.draw @renderer
            @minion.draw @renderer
