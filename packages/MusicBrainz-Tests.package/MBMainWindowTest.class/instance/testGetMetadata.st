TESTING: methods
testGetMetadata
	| anMBalbum aMBtrack |
	anMBalbum := MBAlbum new.
	anMBalbum 
		artists: #('Artist1' 'Artist2');
		title: 'Testalbum'.
	
	self 
		mainWindow selectedEntity: anMBalbum;
		assert: (self mainWindow getMetadata = #('Albumname: Testalbum' 'Interpreten: Artist1, Artist2') asOrderedCollection).
		
	aMBtrack := MBTrack new.
	aMBtrack
		artists: #('Artist1' 'Artist2');
		title: 'Testtrack'.
	aMBtrack tags at: #length put: 60000.
				
	self 
		mainWindow selectedEntity: aMBtrack;
		assert: (self mainWindow getMetadata = #('Titel: Testtrack' 'Interpreten: Artist1, Artist2' 'Länge: 1:00') asOrderedCollection)