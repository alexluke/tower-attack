define [
    'sprites/minion'
    'sprites/towerSection'
], (Minion, TowerSection) ->
    class Player
        @spawnDelay = 1000
        constructor: (@side) ->
            @minions = []
            towerX = switch @side
                when 'right' then 800 - 150 - 10
                when 'left' then 10
                else throw 'Pick a side'
            @tower = [
                new TowerSection towerX, 360
            ]
            @spawnPoint =
                x: towerX + @tower[0].width / 2
                y: @tower[0].y + @tower[0].height
            @lastSpawn = 0

        spawnMinion: (now, type) ->
            if now - @lastSpawn > Player.spawnDelay
                minion = new Minion @spawnPoint.x, @spawnPoint.y
                if @side == 'right'
                    minion.speed.x *= -1
                @minions.push minion
                @lastSpawn = now

