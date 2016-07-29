TESTING: building
testBuildAvailableMetadataList
	| metadataSpec |
	self metadataMergeWindow builder: MorphicToolBuilder new.
	metadataSpec := self metadataMergeWindow buildAvailableMetadataList.
	self 
		assert: metadataSpec class = PluggableListSpec;
		assert: metadataSpec model class = MBMetadataMergeWindow;
		assert: metadataSpec frame = (0@0.1 corner: 0.5@1)