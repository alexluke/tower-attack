define [
    'game'
    'sprites/minion'
], (Game, Minion) ->
    class TowerAttack extends Game
        init: ->
            @minion = new Minion 10, 50

        draw: ->
            @minion.draw @renderer
