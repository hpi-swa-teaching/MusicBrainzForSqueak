as yet unclassified
testBuildWindow
	| windowSpec |
	self mainWindow builder: MorphicToolBuilder new.
	windowSpec := self mainWindow buildWindow.
	self 
		assert: windowSpec class = PluggableWindowSpec;
		assert: windowSpec model class = MBMainWindow;
		assert: windowSpec extent = (763@512);
		assert: windowSpec label = 'MusicBrainz';
		assert: windowSpec children = OrderedCollection new