define ->
    class Sprite
        constructor: (@texture, @x, @y) ->
            @alive = true
            @width ?= @texture.renderWidth
            @height ?= @texture.renderHeight

        draw: (renderer) ->
            renderer.drawTexture @texture, @x, @y, @width, @height

        intersects: (otherSprite) ->
            withinX = @x + @width > otherSprite.x and @x < otherSprite.x + otherSprite.width
            withinY = @y + @height > otherSprite.y and @y < otherSprite.y + otherSprite.height
            return @alive and otherSprite.alive and withinX and withinY
