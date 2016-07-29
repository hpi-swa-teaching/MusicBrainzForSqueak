TESTING: metadata actions
testDeleteMetadata
	self metadataWindow deleteMetadata.
	self assert: self metadataWindow mainWindow selectedMetadata isNil