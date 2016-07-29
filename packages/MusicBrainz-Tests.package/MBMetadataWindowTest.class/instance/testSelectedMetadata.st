TESTING: accessing
testSelectedMetadata
	self metadataWindow selectedMetadata: 'Year'.
	self
		assert: self metadataWindow selectedMetadata
		equals: 'Year'