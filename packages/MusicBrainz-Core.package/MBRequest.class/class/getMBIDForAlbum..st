request
getMBIDForAlbum: aMBAlbum

	| responseXML requestURL hundredList hundredLabelList |
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
	responseXML ifNil: [^ ''].
	hundredList := OrderedCollection new.
	hundredLabelList := OrderedCollection new.
	responseXML tagsNamed: #release do: [:each | 
		((each attributeAt: #ext:score) = '100')
			ifTrue: [ | labelString |
				hundredList add: (each attributeAt: 'id').
				labelString := (each firstTagNamed: #title) contentString , ' - ', (each firstTagNamed: #name) contentString , ' - ' , (each firstTagNamed: #'track-count') contentString, ' Tracks', ' - ', (each firstTagNamed: #'format') contentString.
				hundredLabelList add: labelString
				]].
	(hundredList size > 1)
		ifTrue: [
			^ (UIManager default chooseFrom: hundredLabelList values: hundredList title: 'Please choose the correct MBID:')].
	^ hundredList first