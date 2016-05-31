TESTING: opening and building
testBuildMetadataView
	| listSpec |
	self mainWindow builder: MorphicToolBuilder new.
	listSpec := self mainWindow buildMetadataView.
	self 
		assert: listSpec class = PluggableListSpec;
		assert: listSpec model class = MBMainWindow;
		assert: listSpec list = 'getMetadata';
		assert: listSpec frame = (0.65@0.5 corner: 1@1)