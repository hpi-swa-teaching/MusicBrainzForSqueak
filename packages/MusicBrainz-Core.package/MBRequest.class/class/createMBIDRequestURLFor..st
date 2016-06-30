request
createMBIDRequestURLFor: aMBEntity

	| requestURL |
	requestURL := MBRequest baseURL, aMBEntity class entityName, '/?query='.
	aMBEntity metadata keysAndValuesDo: [:key :value |
		| mbField encodedValue |
		aMBEntity isTrack 
			ifTrue: [	mbField := (MBRequest MBTrackSearchFields at: (key asSymbol) ifAbsent: nil)]
			ifFalse: [mbField := (MBRequest MBAlbumSearchFields at: (key asSymbol) ifAbsent: nil)].
		mbField ifNotNil: 
			[encodedValue := value asString encodeForHTTP.
			encodedValue :=  encodedValue copyReplaceAll: '%00' with: ''.
			encodedValue :=  encodedValue copyReplaceAll: '%2F' with: '%20'.
			encodedValue := encodedValue copyReplaceAll: '%3F' with: '%20'. 
			requestURL := requestURL, mbField , ':', encodedValue, '+']].
	(aMBEntity isAlbum)
		ifTrue: [(aMBEntity tracklist size > 0)
		ifTrue: 	[requestURL := requestURL, 'tracks:', aMBEntity tracklist size, '+']].
		
	
	^ requestURL copyFrom: 1 to: requestURL size - 1