as yet unclassified
testUpdateMetadata
	self metadataWindow
		selectedMetadata: 'Title';
		updateMetadata: 'Teststring'.
	self 
		assert: (self metadataWindow mainWindow selectedEntity metadata at: #Title)
		equals: 'Teststring'