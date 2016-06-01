accessing
getArtists

	
	self metadata at: #Artist ifAbsent:
		[ ^ ''].
	
		[^ self metadata split: '/'.
"		| request artists |
		request := MBRequest browseFor: 'artist' by: (self class entityName) withMBID: (self mbid).
		artists := OrderedCollection new.
		request tagsNamed: #artist do: [:artistData | artists add: (artistData firstTagNamed: #name) contentString].
		self
			artists: artists;
			artists "]