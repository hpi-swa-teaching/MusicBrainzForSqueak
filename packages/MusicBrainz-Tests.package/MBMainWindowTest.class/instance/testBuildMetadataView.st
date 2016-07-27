as yet unclassified
testBuildMetadataView
	|  listSpec |
	self mainWindow builder: MorphicToolBuilder new.
	listSpec := self mainWindow buildMetadataView.
	self 
		assert: PluggableListSpec equals: listSpec class;
		assert: MBMainWindow equals: listSpec model class;
		assert: 'getMetadata' equals: listSpec list;
		assert: 'selectedMetadata' equals: listSpec getSelected;
		assert: 'selectedMetadata:' equals: listSpec setSelected;
		assert: (0.65@0.60 corner: 1@0.95) equals: listSpec frame