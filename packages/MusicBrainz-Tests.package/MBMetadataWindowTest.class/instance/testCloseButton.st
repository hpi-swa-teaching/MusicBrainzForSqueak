as yet unclassified
testCloseButton
	self metadataWindow closeButton.
	self assert: self metadataWindow mainWindow metadataWindow = nil