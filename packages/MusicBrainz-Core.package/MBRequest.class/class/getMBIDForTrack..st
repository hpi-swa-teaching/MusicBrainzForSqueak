request
getMBIDForTrack: aMBTrack

	| responseXML requestURL hundredLabelList hundredList |
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
	hundredList := OrderedCollection new.
	hundredLabelList := OrderedCollection new.
	responseXML tagsNamed: #recording do: [:each | 
		((each attributeAt: #ext:score) = '100')
			ifTrue: [ | labelString |
				hundredList add: (each attributeAt: 'id').
				labelString := (each firstTagNamed: #title) contentString , ' - ' , (each firstTagNamed: #'name') contentString, ' Tracks', ' - ', ((each firstTagNamed: #'release') firstTagNamed: #'title') contentString.
				hundredLabelList add: labelString
				]].
	(hundredList size > 1)
		ifTrue: [
			^ (UIManager default chooseFrom: hundredLabelList values: hundredList title: 'Please choose the correct MBID:')].
	^ hundredList first