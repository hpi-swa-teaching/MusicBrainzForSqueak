TESTING: methods
testGetMetadata
	| anMBalbum aMBtrack |
	anMBalbum := MBAlbum new.
	anMBalbum
		mbid: 'f92168f3-d1e9-4961-a9c5-06301ebe8258'.
	
	self
		mainWindow selectedEntity: anMBalbum;
		assert: (self mainWindow getMetadata = #('Albumname: Devils' 'Interpreten: The 69 Eyes' 'Jahr: 2005' 'Label: EMI Finland' 'Medium: Digital Media' 'MBID: f92168f3-d1e9-4961-a9c5-06301ebe8258') asOrderedCollection).
		
	aMBtrack := MBTrack new.
	aMBtrack
		artists: #('Artist1' 'Artist2');
		title: 'Testtrack'.
	aMBtrack tags at: #length put: 60000.
				
	self 
		mainWindow selectedEntity: aMBtrack;
		assert: (self mainWindow getMetadata = #('Titel: Testtrack' 'Interpreten: Artist1, Artist2' 'Länge: 1:00') asOrderedCollection)