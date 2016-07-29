as yet unclassified
testMetadataToMergeAt
	| index |
	index := 0.
	self metadataMergeWindow metadataToMerge: Dictionary new.
	self metadataMergeWindow metadataToMergeAt: 0 Put: 'Label'.
	self 
		assert: (self metadataMergeWindow metadataToMergeAt: index) 
		equals: (self metadataMergeWindow metadataToMerge at: index)