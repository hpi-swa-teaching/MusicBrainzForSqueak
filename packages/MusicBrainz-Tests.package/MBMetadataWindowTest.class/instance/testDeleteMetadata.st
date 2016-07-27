as yet unclassified
testDeleteMetadata
	self metadataWindow deleteMetadata.
	self assert: self mainWindow selectedMetadata = nil