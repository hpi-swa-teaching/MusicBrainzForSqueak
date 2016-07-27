metadata-management
setCoverFromTrackToAlbum: aMBTrack
	
	(aMBTrack cover isNil not and: aMBTrack albumEntity cover isNil)
		ifTrue: [aMBTrack albumEntity cover: aMBTrack cover.
				aMBTrack cover: nil].
	aMBTrack cover: nil