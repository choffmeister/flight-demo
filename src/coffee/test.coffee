define ["flight/component"], (defineComponent) ->
  defineComponent () ->
    @clicked = (event) ->
      console.log(event)

    @after "initialize", ->
      console.log("initialize", @node)
      @$node.on("click", @clicked)

    @before "teardown", ->
      console.log("teardown", @node)
      @$node.off("click", @clicked)

    return
