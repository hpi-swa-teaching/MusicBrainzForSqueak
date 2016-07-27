as yet unclassified
testDeleteMetadata
	self metadataWindow deleteMetadata.
	self assert: self metadataWindow mainWindow selectedMetadata = nil