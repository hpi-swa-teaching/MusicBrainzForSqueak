track handling
addTrackToExistingAlbum: aMBTrack
	self albums
		detect: [:each | each getTitle = (aMBTrack metadata at: #Album)]
		ifFound: [:album | self setReferencesIn: album containing: aMBTrack. ^ true]
		ifNone: [^ false]