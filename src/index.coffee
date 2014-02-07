gui = require 'nw.gui'

mainWindow = null;

$ ->
	mainWindow = gui.Window.get()
	
	$('#fullScreenToggleButton a').on 'click', ->
		mainWindow.toggleFullscreen()

	$('#appCloseButton').on 'click', ->
		mainWindow.close()
		return false;

	$('#appMinimizeButton').on 'click', ->
		mainWindow.minimize()
		return false;

	$('#appMaximizeButton').on 'click', ->
		if screen.availHeight is window.outerHeight
			mainWindow.restore()
		else
			mainWindow.maximize()
		return false;