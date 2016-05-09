accessing
setMBID: aString
	
	(self checkValidMBID: aString)
		ifFalse: [^ self error: 'not a valid mbid'].
	self mbid: aString
	