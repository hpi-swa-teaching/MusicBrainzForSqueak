TESTING: methods
testGetAlbumName
	|album track|
	album := MBAlbum new.
	album title: 'Album title'.
	album artists: #('Album artist') asOrderedCollection.
	track := MBTrack new.
	track title: 'Track title'.
	self 
		assert: (self mainWindow getAlbumName: album) equals: 'Album title - Album artist';
		assert: (self mainWindow getAlbumName: track) equals: 'Track title'