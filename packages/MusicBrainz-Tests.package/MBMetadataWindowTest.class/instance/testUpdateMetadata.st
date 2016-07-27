as yet unclassified
testUpdateMetadata
	self metadataWindow
		selectedMetadata: 'Title';
		updateMetadata: 'Teststring'.
	self 
		assert: (self metadataWindow selectedEntity metadata at: #Title)
		equals: 'Teststring'