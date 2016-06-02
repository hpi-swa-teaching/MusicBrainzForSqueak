as yet unclassified
getMBIDForTrack: aMBTrack

	| response responseXML requestURL|
	requestURL := MBRequest baseURL, 'recording/?query='.
	aMBTrack metadata keysAndValuesDo: [:key :value |
		| mbField encodedValue |
		mbField := (MBRequest MBTrackSearchFields at: (key asSymbol) ifAbsent: nil).
		mbField ifNotNil: 
			[encodedValue := value encodeForHTTP.
			encodedValue :=  encodedValue copyReplaceAll: '%00' with: ''.
			requestURL := requestURL, mbField , ':', encodedValue, '+']].
	requestURL := requestURL copyFrom: 1 to: requestURL size - 1.
	response := WebClient httpGet: requestURL.
	response isSuccess ifFalse:[^self error: response status].
	response := response content.
	responseXML := XMLDOMParser parseDocumentFrom: response readStream.
	^ (responseXML firstTagNamed: #recording) attributeAt: 'id'	