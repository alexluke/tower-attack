define [
    'game'
    'texture'
    'player'
], (Game, Texture, Player) ->
    class TowerAttack extends Game
        init: ->
            @backgroundTexture = new Texture 'background'
            @player1 = new Player 'right'

        draw: ->
            @renderer.drawTexture @backgroundTexture, 0, 0, @canvasWidth, @canvasHeight
            @player1.tower[0].draw @renderer

            minion.draw @renderer for minion in @player1.minions

        update: (delta, now) ->
            minion.update delta for minion in @player1.minions

            if @mouse.leftButton
                @player1.spawnMinion now
