as yet unclassified
getArtists

	(self artists isNil)
	ifTrue: [
		| request artists |
		request := MBrequest new browseFor: 'artist' by: (self class entityName) withMBID: (self mbid).
		artists := OrderedCollection new.
		request tagsNamed: #artist do: [:artistData | artists add: (artistData firstTagNamed: #name) contentString].
		self artists: artists].
	^ self artists