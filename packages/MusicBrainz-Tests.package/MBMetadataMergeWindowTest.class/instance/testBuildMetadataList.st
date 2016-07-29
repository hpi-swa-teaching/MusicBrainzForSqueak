TESTING: building
testBuildMetadataList
	| metadataSpec |
	self metadataMergeWindow builder: MorphicToolBuilder new.
	metadataSpec := self metadataMergeWindow buildMetadataList.
	self 
		assert: metadataSpec class = PluggableListSpec;
		assert: metadataSpec model class = MBMetadataMergeWindow;
		assert: metadataSpec list = 'getLocalMetadata';
		assert: metadataSpec frame = (0.3@0.05 corner: 0.65@0.9)