as yet unclassified
testIsMetadataSelected
	self assert: (self metadataWindow isMetadataSelected not) = self metadataWindow selectedMetadata isNil
	