request
getMBIDForTrack: aMBTrack

	| responseXML hundredLabelList hundredList |
	responseXML := MBRequest sendRequestTo: (MBRequest createMBIDRequestURLFor: aMBTrack).
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