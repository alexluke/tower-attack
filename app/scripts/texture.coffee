define ->
    class Texture
        constructor: (el) ->
            @data = document.getElementById el
            throw "Cannot load image from #{ el }" unless @data

            @width = @data.naturalWidth
            @height = @data.naturalHeight
            @renderWidth = @data.width
            @renderHeight = @data.height
