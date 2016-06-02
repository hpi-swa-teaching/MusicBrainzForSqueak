accessing
getArtists

	self metadata at: #Artist ifAbsent:
		[ ^ OrderedCollection new].
	
	^ (self metadata at: #Artist) splitBy: '/' asOrderedCollection