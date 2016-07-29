TESTING: metadata actions
testUpdateMetadata
	self metadataWindow
		selectedMetadata: 'Title';
		updateMetadata: 'Teststring'.
	self 
		assert: (self metadataWindow mainWindow selectedEntity metadata at: #Title)
		equals: 'Teststring'