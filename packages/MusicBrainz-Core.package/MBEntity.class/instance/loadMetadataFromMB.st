loadFromMB
loadMetadataFromMB
	self getArtists isEmpty
		ifTrue: [
			(self loadArtistsFromMB) ifNotNilDo: [:aString | self metadata at: #Artist put: aString ]].
	self getTitle isEmpty
		ifTrue: [
			(self loadTitleFromMB) ifNotNilDo: [:aString | self metadata at: #Title put: aString]]