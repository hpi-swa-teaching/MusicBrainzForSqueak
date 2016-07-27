metadata-management
copyMetadataFrom: aMBTrack to: aMBAlbum

	aMBAlbum metadata at: #Title put: (aMBTrack metadata at: #Album).
	aMBTrack metadata at: #Artist ifPresent:
		[:artist | aMBAlbum metadata at: #Artist put: artist].
	aMBTrack metadata at: #Year ifPresent:
		[:year | aMBAlbum metadata at: #Year put: year].
