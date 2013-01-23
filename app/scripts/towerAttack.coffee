define [
    'game'
    'texture'
    'sprites/minion'
    'sprites/towerSection'
], (Game, Texture, Minion, TowerSection) ->
    class TowerAttack extends Game
        init: ->
            @backgroundTexture = new Texture 'background'
            @towerSection = new TowerSection 10, 360
            @minions = []
            @lastSpawn = 0
            @spawnDelay = 1000

        draw: ->
            @renderer.drawTexture @backgroundTexture, 0, 0, @canvasWidth, @canvasHeight
            @towerSection.draw @renderer

            minion.draw @renderer for minion in @minions

        update: (delta, now) ->
            minion.update delta for minion in @minions

            if @mouse.leftButton and now - @lastSpawn > @spawnDelay
                minion = new Minion @towerSection.x + @towerSection.width / 2, @towerSection.y + @towerSection.height
                @minions.push minion
                @lastSpawn = now
