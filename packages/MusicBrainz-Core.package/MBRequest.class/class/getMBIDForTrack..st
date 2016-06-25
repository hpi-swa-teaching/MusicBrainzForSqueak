request
getMBIDForTrack: aMBTrack

	| responseXML hundredLabelList hundredList hundredDict hundredCount |
	responseXML := MBRequest sendRequestTo: (MBRequest createMBIDRequestURLFor: aMBTrack).
	responseXML ifNil: [^ ''].
	hundredList := OrderedCollection new.
	hundredLabelList := OrderedCollection new.
	hundredDict := Dictionary new.
	hundredDict at: 'Title' put: OrderedCollection new;
		at: 'Artist' put: OrderedCollection new;
		at: 'Album' put: OrderedCollection new.
	hundredCount := 0.
	responseXML tagsNamed: #recording do: [:each | 
		((each attributeAt: #ext:score) = '100')
			ifTrue: [
				hundredCount := hundredCount + 1.
				hundredList add: (each attributeAt: 'id').
				(hundredDict at: 'Title') add: (each firstTagNamed: #title) contentString.
				(hundredDict at: 'Artist') add: (each firstTagNamed: #name) contentString.
				(hundredDict at: 'Album') add: ((each firstTagNamed: #'release') firstTagNamed: #'title') contentString]].
	hundredCount < 2
		ifTrue: [^ (responseXML firstTagNamed: #recording) attributeAt: 'id'].
	1 to: hundredCount do: [:each |
		| labelString |
		labelString := ''.
		hundredDict keysAndValuesDo: [:key :value |
			value asSet size > 1
				ifTrue: [	labelString := labelString, key asString, ': ', (value at: each) asString, ' - ']].
		hundredLabelList add: (labelString allButLast: 3)].
	^ (UIManager default chooseFrom: hundredLabelList values: hundredList title: 'Please choose the correct MBID:')