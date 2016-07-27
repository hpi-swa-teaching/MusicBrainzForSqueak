as yet unclassified
testUpdateViews
	self metadataWindow
		selectedMetadata: 'Title';
		updateViews.
	self 
		assert: self metadataWindow selectedMetadata
		equals: nil