as yet unclassified
testBuildMetadataView
	|  listSpec |
	self mainWindow builder: MorphicToolBuilder new.
	listSpec := self mainWindow buildMetadataView.
	self 
		assert: listSpec class = PluggableListSpec;
		assert: listSpec model class = MBMainWindow;
		assert: listSpec list = 'getMetadata';
		assert: listSpec getSelected = 'selectedMetadata';
		assert: listSpec setSelected = 'selectedMetadata:';
		assert: listSpec frame = (0.65@0.60 corner: 1@0.95)