'use strict'
class ExcellentUI
  config:
    tabSyntaxThemeBackground:
      description: 'Match the active tab\'s background color with the text editor'
      type: 'boolean'
      default: true

  activate: ->
    @sub = atom.config.observe 'excellent-ui', @update

  deactivate: ->
    @sub.dispose()

  update: (config) ->
    workspaceView = atom.views.getView atom.workspace
    if config.tabSyntaxThemeBackground
      workspaceView.classList.add 'excellent-ui-tab-syntax-background'
    else
      workspaceView.classList.remove 'excellent-ui-tab-syntax-background'

module.exports = new ExcellentUI()
