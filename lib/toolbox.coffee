{CompositeDisposable} = require 'atom'

module.exports = Toolbox =
  subscriptions: null

  activate: (state) ->
    console.log('activating `toolbox` package!')
    @subscriptions = new CompositeDisposable()
    @subscriptions.add atom.commands.add 'atom-text-editor', 'toolbox:swap-quote': => @quote_swap()

  deactivate: ->
    @subscriptions.dispose()
    console.log('deactivated `toolbox` package!')

  serialize: -> undefined

  quote_swap: ->
    editor = atom.workspace.getActiveTextEditor()
    console.log("swaping quotes in (#{editor.getTitle()}) file")
