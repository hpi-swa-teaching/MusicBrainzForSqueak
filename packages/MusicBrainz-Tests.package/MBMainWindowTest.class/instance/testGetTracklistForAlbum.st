TESTING: methods
testGetTracklistForAlbum
	| anMBalbum|
	anMBalbum := MBAlbum new.
	anMBalbum tracklist: #('Track1' 'Track2').
	self 
		assert: ((self mainWindow getTracklistForAlbum: MBTrack new) = (OrderedCollection new));
		assert: ((self mainWindow getTracklistForAlbum: anMBalbum) =  #('Track1' 'Track2'))