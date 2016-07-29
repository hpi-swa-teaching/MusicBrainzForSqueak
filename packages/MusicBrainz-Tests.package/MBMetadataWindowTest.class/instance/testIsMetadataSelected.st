TESTING: accessing
testIsMetadataSelected
	self 
		assert: self metadataWindow isMetadataSelected not
		equals: self metadataWindow selectedMetadata isNil
	