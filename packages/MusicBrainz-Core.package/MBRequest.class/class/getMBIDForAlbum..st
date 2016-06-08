as yet unclassified
getMBIDForAlbum: aMBAlbum

	| responseXML requestURL|
	requestURL := MBRequest baseURL, 'release/?query='.
	aMBAlbum metadata keysAndValuesDo: [:key :value |
		| mbField encodedValue |
		mbField := (MBRequest MBAlbumSearchFields at: (key asSymbol) ifAbsent: nil).
		mbField ifNotNil: 
			[encodedValue := value encodeForHTTP.
			encodedValue :=  encodedValue copyReplaceAll: '%00' with: ''.
			encodedValue :=  encodedValue copyReplaceAll: '%2F' with: '%20'.
			requestURL := requestURL, mbField , ':', encodedValue, '+']].
	(aMBAlbum tracklist size > 0)
	ifTrue: [requestURL := requestURL, 'tracks', ':', (aMBAlbum tracklist size asString), '+'].
	requestURL := requestURL copyFrom: 1 to: requestURL size - 1.
	responseXML := MBRequest sendRequestTo: requestURL.
	^ (responseXML firstTagNamed: #release) attributeAt: 'id'	