accessing
setMBID: aString
	aString	ifNil: [self mbid: nil. ^ self].
	aString ifEmpty: [self mbid: ''. ^ self].
	(self checkValidMBID: aString)
		ifFalse: [^ self error: 'not a valid mbid'].
	self mbid: aString