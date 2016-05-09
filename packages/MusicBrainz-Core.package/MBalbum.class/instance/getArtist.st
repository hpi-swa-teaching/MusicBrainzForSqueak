as yet unclassified
getArtist

	| request artists |
	request := MBrequest new browseFor: 'artist' by: (self class entityName) withMbid: (self mbid).
	artists := Set new.
	request tagsNamed: #artist do: [:artistData | artists add: (artistData firstTagNamed: #name) contentString].
	
	^ artists