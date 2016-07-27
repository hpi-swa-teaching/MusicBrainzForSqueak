as yet unclassified
testClearViews
	self metadataMergeWindow clearViews.
	self assert: self metadataMergeWindow localMetadata equals: nil.
	self assert: self metadataMergeWindow mBMetadata equals: nil
	