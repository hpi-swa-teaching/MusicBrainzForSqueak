TESTING: methods
testGetMetadataTrack
	| aMBtrack |
	aMBtrack := MBTrack new.
	aMBtrack
		artists: #('Artist1' 'Artist2');
		title: 'Testtrack'.
	aMBtrack tags at: #length put: 60000.
				
	self 
		mainWindow selectedEntity: aMBtrack;
		assert: (self mainWindow getMetadataTrack = #('Titel: Testtrack' 'Interpreten: Artist1, Artist2' 'Länge: 1:00') asOrderedCollection)