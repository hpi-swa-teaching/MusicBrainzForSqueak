loadFromMB
loadTitle

	| request |		
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load title.'].
	request := MBRequest getDetailsForA: (self class entityName) withMBID: (self mbid).
	^ (request firstTagNamed: #title) contentString