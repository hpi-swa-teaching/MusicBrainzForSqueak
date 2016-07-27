as yet unclassified
testBuildLabelMetadataList
	| metadataSpec |
	self metadataMergeWindow builder: MorphicToolBuilder new.
	metadataSpec := self metadataMergeWindow buildLabelMetadataList.
	self 
		assert: metadataSpec class = PluggableListSpec;
		assert: metadataSpec model class = MBMetadataMergeWindow;
		assert: metadataSpec list = 'getMetadataLabels';
		assert: metadataSpec frame = (0@0.05 corner: 0.3@0.9)