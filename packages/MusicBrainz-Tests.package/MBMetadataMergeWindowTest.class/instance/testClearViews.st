as yet unclassified
testClearViews
	self metadataMergeWindow clearViews.
	self 
		assert: self metadataMergeWindow localMetadata isNil;
		assert: self metadataMergeWindow mBMetadata isNil