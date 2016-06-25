request
getMBIDForAlbum: aMBAlbum

	| responseXML hundredList hundredLabelList |
	responseXML := MBRequest sendRequestTo: (MBRequest createMBIDRequestURLFor: aMBAlbum).
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