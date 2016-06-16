as yet unclassified
getMBIDForTrack: aMBTrack

	| responseXML requestURL|
	requestURL := MBRequest baseURL, 'recording/?query='.
	aMBTrack metadata keysAndValuesDo: [:key :value |
		| mbField encodedValue |
		mbField := (MBRequest MBTrackSearchFields at: (key asSymbol) ifAbsent: nil).
		mbField ifNotNil: 
			[encodedValue := value encodeForHTTP.
			encodedValue :=  encodedValue copyReplaceAll: '%00' with: ''.
			encodedValue :=  encodedValue copyReplaceAll: '%2F' with: '%20'.
			requestURL := requestURL, mbField , ':', encodedValue, '+']].
	requestURL := requestURL copyFrom: 1 to: requestURL size - 1.
	responseXML := MBRequest sendRequestTo: requestURL.
	responseXML ifNil: [^ ''].
	^ (responseXML firstTagNamed: #recording) attributeAt: 'id'	