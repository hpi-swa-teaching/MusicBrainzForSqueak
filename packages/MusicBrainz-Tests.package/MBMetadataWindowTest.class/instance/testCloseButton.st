TESTING: building
testCloseButton
	self metadataWindow closeButton.
	self assert: self metadataWindow mainWindow metadataWindow isNil