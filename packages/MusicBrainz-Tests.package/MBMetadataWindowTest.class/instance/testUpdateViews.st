TESTING: metadata actions
testUpdateViews
	self metadataWindow
		selectedMetadata: 'Title';
		updateViews.
	self assert: self metadataWindow selectedMetadata isNil