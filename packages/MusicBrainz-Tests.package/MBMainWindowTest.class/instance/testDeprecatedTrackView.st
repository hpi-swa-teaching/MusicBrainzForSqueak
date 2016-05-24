TESTING: opening and building
testDeprecatedTrackView
	| listSpec |
	self mainWindow builder: MorphicToolBuilder new.
	listSpec := self mainWindow buildDeprecatedTrackView.
	self 
		assert: listSpec class = PluggableListSpec;
		assert: listSpec model class = MBMainWindow;
		assert: listSpec list = 'allTracks';
		assert: listSpec frame = (0@0.3 corner: 0.3@0.8)