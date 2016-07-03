accessing
setMBID: aString 
	aString
		ifNil: [self mbid: nil.
			^ self].
	(self checkValidMBID: aString)
		ifFalse: [^ self error: 'not a valid mbid'].
	self mbid: aString