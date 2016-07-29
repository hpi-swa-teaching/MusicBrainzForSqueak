TESTING: building
testBuildWindow
	| windowSpec |
	self settingsWindow builder: MorphicToolBuilder new.
	windowSpec := self settingsWindow buildWindow.
	self 
		assert: windowSpec class = PluggableWindowSpec;
		assert: windowSpec model class = MBSettingsWindow;
		assert: windowSpec label = MBSettingsWindow labelForSettingsWindow;
		assert: windowSpec extent = (400@400);
		assert: windowSpec children class = OrderedCollection