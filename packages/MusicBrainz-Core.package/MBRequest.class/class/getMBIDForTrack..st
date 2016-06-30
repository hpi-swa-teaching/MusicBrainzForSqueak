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
				[(hundredDict at: 'Title') add: (each firstTagNamed: #title) contentString] on: Error do: [(hundredDict at: 'Title') add: ''].
				[(hundredDict at: 'Artist') add: (each firstTagNamed: #name) contentString] on: Error do: [(hundredDict at: 'Artist') add: ''].
				[(hundredDict at: 'Album') add: ((each firstTagNamed: #'release') firstTagNamed: #'title') contentString] on: Error do: [(hundredDict at: 'Album') add: '']]].
	hundredCount < 2
		ifTrue: [^ (responseXML firstTagNamed: #recording) attributeAt: 'id'].
	1 to: hundredCount do: [:each |
		| labelString |
		labelString := ''.
		hundredDict keysAndValuesDo: [:key :value |
			value asSet size > 0
				ifTrue: [	labelString := labelString, key asString, ': ', (value at: each) asString, ' - ']].
		hundredLabelList add: (labelString allButLast: 3)].
	^ (UIManager default chooseFrom: hundredLabelList values: hundredList title: 'Please choose the correct track:')