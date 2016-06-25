request
getMBIDForAlbum: aMBAlbum

	| responseXML hundredList hundredLabelList hundredDict hundredCount |
	responseXML := MBRequest sendRequestTo: (MBRequest createMBIDRequestURLFor: aMBAlbum).
	responseXML ifNil: [^ ''].
	hundredList := OrderedCollection new.
	hundredLabelList := OrderedCollection new.
	hundredDict := Dictionary new.
	hundredDict at: 'Title' put: OrderedCollection new;
		at: 'Artist' put: OrderedCollection new;
		at: 'Tracks' put: OrderedCollection new;
		at: 'Medium' put: OrderedCollection new.
	hundredCount := 0.
	responseXML tagsNamed: #release do: [:each | 
		((each attributeAt: #ext:score) = '100')
			ifTrue: [ | labelString |
				hundredCount := hundredCount + 1.
				hundredList add: (each attributeAt: 'id').
				(hundredDict at: 'Title') add: (each firstTagNamed: #title) contentString.
				(hundredDict at: 'Artist') add: (each firstTagNamed: #name) contentString.
				(hundredDict at: 'Tracks') add: (each firstTagNamed: #'track-count') contentString.
				(hundredDict at: 'Medium') add: (each firstTagNamed: #'format') contentString]].
	hundredCount < 2
		ifTrue: [^ (responseXML firstTagNamed: #release) attributeAt: 'id'].
	1 to: hundredCount do: [:each |
		| labelString |
		labelString := ''.
		hundredDict keysAndValuesDo: [:key :value |
			value asSet size > 1
				ifTrue: [	labelString := labelString, key asString, ': ', (value at: each) asString, ' - ']].
		hundredLabelList add: (labelString allButLast: 3)].
	^ (UIManager default chooseFrom: hundredLabelList values: hundredList title: 'Please choose the correct MBID:')