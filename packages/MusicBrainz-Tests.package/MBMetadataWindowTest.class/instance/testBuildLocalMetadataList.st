as yet unclassified
testBuildLocalMetadataList
	| metadataSpec |
	self metadataWindow builder: MorphicToolBuilder new.
	metadataSpec := self metadataWindow buildLocalMetadataList.
	self assert: metadataSpec class = PluggableListSpec;
		 assert: metadataSpec model class = MBMetadataWindow;
		 assert: metadataSpec frame
			= (0@0.1 corner: 1@0.9);
		assert: metadataSpec list= #getMetadataLabels;
		assert: metadataSpec getSelected= #selectedMetadata;
		assert: metadataSpec setSelected= #selectedMetadata: