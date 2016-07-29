TESTING: accessing
testMetadataToMerge
	self metadataMergeWindow metadataToMerge: nil.
	self 
		assert: (self metadataMergeWindow metadataToMerge) class 
		equals: Array