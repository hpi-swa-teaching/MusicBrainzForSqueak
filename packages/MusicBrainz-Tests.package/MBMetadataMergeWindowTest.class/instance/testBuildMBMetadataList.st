TESTING: building
testBuildMBMetadataList
	| metadataSpec |
	self metadataMergeWindow builder: MorphicToolBuilder new.
	metadataSpec := self metadataMergeWindow buildMBMetadataList.
	self 
		assert: metadataSpec class = PluggableMultiSelectionListSpec;
		assert: metadataSpec model class = MBMetadataMergeWindow;
		assert: metadataSpec list = 'getMBMetadata';
		assert: metadataSpec getSelectionList = 'metadataToMergeAt:';
		assert: metadataSpec setSelectionList = 'metadataToMergeAt:Put:';
		assert: metadataSpec frame = (0.65@0.05 corner: 1@0.9)