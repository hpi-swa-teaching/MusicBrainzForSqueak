loadFromMB
loadArtists

	| request artists |
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load artists.'].
	request := MBRequest browseFor: 'artist' by: (self class entityName) withMBID: (self mbid).
	artists := ''.
	request tagsNamed: #artist do: [:artistData | artists := artists,  '/', (artistData firstTagNamed: #name) contentString].
	^ artists copyFrom: 2 to: artists size
		