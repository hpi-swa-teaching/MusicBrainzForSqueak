TESTING: opening and building
testDeprecatedAlbumView
	| listSpec |
	self mainWindow builder: MorphicToolBuilder new.
	listSpec := self mainWindow buildDeprecatedAlbumView.
	self 
		assert: listSpec class = PluggableListSpec;
		assert: listSpec model class = MBMainWindow;
		assert: listSpec list = 'albums';
		assert: listSpec frame = (0@0.8 corner: 1@1)