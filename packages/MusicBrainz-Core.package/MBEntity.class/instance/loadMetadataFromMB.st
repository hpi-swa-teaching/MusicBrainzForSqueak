loadFromMB
loadMetadataFromMB

	(self getArtists isEmpty)
		ifTrue: [self metadata at: #Artist put: self loadArtists].
	(self getTitle isEmpty)
		ifTrue: [self metadata at: #Title put: self loadTitle].