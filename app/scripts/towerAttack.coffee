define [
    'game'
    'texture'
    'player'
], (Game, Texture, Player) ->
    class TowerAttack extends Game
        init: ->
            @backgroundTexture = new Texture 'background'
            @players = [
                new Player 'left'
                new Player 'right'
            ]

        draw: ->
            @renderer.drawTexture @backgroundTexture, 0, 0, @canvasWidth, @canvasHeight
            for player in @players
                player.tower[0].draw @renderer

                minion.draw @renderer for minion in player.minions

        update: (delta, now) ->
            for player in @players
                minion.update delta for minion in player.minions

            if @mouse.leftButton
                @players[0].spawnMinion now
                @players[1].spawnMinion now
