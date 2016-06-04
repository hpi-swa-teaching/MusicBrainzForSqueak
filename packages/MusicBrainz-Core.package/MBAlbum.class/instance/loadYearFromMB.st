loadFromMB
loadYearFromMB
	
	| request year |
	self mbid ifNil: 
		[^ self error: 'No MBID set. Can''t load year for album.'].

	request := MBRequest getDetailsForA: (self class entityName) withMBID: (self mbid).
	[year := ((request firstTagNamed: #date) contentString copyFrom: 1 to: 4).]
		on: MessageNotUnderstood
		do: [^ ''].
	^ year