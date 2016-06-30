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
		at: 'Label' put: OrderedCollection new;
		at: 'Country' put: OrderedCollection new;
		at: 'Medium' put: OrderedCollection new.
	hundredCount := 0.
	responseXML tagsNamed: #release do: [:each | 
		((each attributeAt: #ext:score) = '100')
			ifTrue: [ | labels |
				hundredCount := hundredCount + 1.
				hundredList add: (each attributeAt: 'id').
				[(hundredDict at: 'Title') add: (each firstTagNamed: #title) contentString] on: Error do: [(hundredDict at: 'Title') add: ''].
				[(hundredDict at: 'Artist') add: (each firstTagNamed: #name) contentString] on: Error do: [(hundredDict at: 'Artist') add: ''].
				[(hundredDict at: 'Tracks') add: (each firstTagNamed: #'track-count') contentString] on: Error do: [(hundredDict at: 'Tracks') add: ''].
				labels := ''.
				each tagsNamed: #label do: [:labelData | labels := labels,  '/', (labelData firstTagNamed: #name) contentString].
				labels size > 0
					ifTrue: [(hundredDict at: 'Label') add: labels allButFirst]
					ifFalse: [(hundredDict at: 'Label') add: ''].
				[(hundredDict at: 'Country') add: (each firstTagNamed: #'country') contentString] on: Error do: [(hundredDict at: 'Country') add: ''].
				[(hundredDict at: 'Medium') add: (each firstTagNamed: #'format') contentString] on: Error do: [(hundredDict at: 'Medium') add: '']]].
	hundredCount < 2
		ifTrue: [^ (responseXML firstTagNamed: #release) attributeAt: 'id'].
	1 to: hundredCount do: [:each |
		| labelString |
		labelString := ''.
		hundredDict keysAndValuesDo: [:key :value |
			value asSet size > 1
				ifTrue: [	labelString := labelString, key asString, ': ', (value at: each) asString, ' - ']].
		hundredLabelList add: (labelString allButLast: 3)].
	^ (UIManager default chooseFrom: hundredLabelList values: hundredList title: 'Please choose the correct album:')