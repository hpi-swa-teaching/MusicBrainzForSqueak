as yet unclassified
getArtists

	| request artists |
	request := MBrequest new browseFor: 'artist' by: (self class entityName) withMBID: (self mbid).
	artists := Set new.
	request tagsNamed: #artist do: [:artistData | artists add: (artistData firstTagNamed: #name) contentString].
	
	^ artists