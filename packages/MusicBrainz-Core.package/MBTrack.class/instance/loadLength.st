loadFromMB
loadLength

	| request |
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load length for track.'].
	request := MBRequest getDetailsForA: (self class entityName) withMBID: (self mbid).
	^ (request firstTagNamed: #length) contentString