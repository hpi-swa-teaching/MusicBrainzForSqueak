request
createMBIDRequestURLFor: aMBEntity
	| requestURL |
	requestURL := MBRequest baseURL, aMBEntity class entityName, '/?query='.
	aMBEntity metadata keysAndValuesDo: [:key :value | 
		(MBRequest getMBKeywordForA: aMBEntity about: key) ifNotNilDo: [:field |
			requestURL := requestURL, field, ':', (MBRequest encodeMetadataForURL: value), '+']].
	(aMBEntity isAlbum)
		ifTrue: 	[requestURL := requestURL, 'tracks:', aMBEntity tracklist size, '+'].
	^ requestURL allButLast