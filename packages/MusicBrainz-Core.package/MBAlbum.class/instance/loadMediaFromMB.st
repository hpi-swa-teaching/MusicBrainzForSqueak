loadFromMB
loadMediaFromMB

	| request media |
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load media for album.'].
	request := MBRequest getDetailsForA: (self class entityName) withMBID: (self mbid) about: 'media'.
	media := ''.
	[request tagsNamed: #medium do: [:mediumData | media := media,  '/', (mediumData firstTagNamed: #format) contentString].]
		on: MessageNotUnderstood
		do: [^ OrderedCollection new].
	(media size > 0)
		ifTrue: [^ media allButFirst].
	^ media