loadFromMB
loadMetadataFromMB
	self getArtists isEmpty
		ifTrue: [self metadata at: #Artist put: self loadArtistsFromMB].
	self getTitle isEmpty
		ifTrue: [self metadata at: #Title put: self loadTitleFromMB]