TESTING: methods
testGetMetadataAlbum
	| anMBalbum |
	anMBalbum := MBAlbum new.
	anMBalbum
		mbid: 'f92168f3-d1e9-4961-a9c5-06301ebe8258'.
	
	self mainWindow selectedEntity: anMBalbum.
	self assert: (self mainWindow getMetadataAlbum)
		equals: #('Albumname: Devils' 'Interpreten: The 69 Eyes' 'Jahr: 2005' 'Label: EMI Finland' 'Medium: Digital Media' 'MBID: f92168f3-d1e9-4961-a9c5-06301ebe8258') asOrderedCollection
		description: 'Fehler getMetadataAlbum'