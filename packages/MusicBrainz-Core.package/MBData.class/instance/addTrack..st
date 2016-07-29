track handling
addTrack: aMBTrack
	aMBTrack albumEntity: nil.
	aMBTrack metadata at: #Album ifAbsent: [
		self addTrackToUnknownAlbum: aMBTrack.
		^ self].
	(self addTrackToExistingAlbum: aMBTrack)
		ifFalse: [self addNewAlbumFor: aMBTrack].
	self setCoverFromTrackToAlbum: aMBTrack