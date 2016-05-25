TESTING: methods
testGetTracklistForAlbum
	| anMBalbum |
	anMBalbum := MBalbum new.
	anMBalbum tracklist: #('Track1' 'Track2').
	self 
		assert: ((self mainWindow getTracklistForAlbum: 'invalid input') = OrderedCollection new)