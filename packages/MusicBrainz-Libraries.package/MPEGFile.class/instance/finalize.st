file ops
finalize
	self fileHandle notNil ifTrue: [self primFileClose: self fileHandle].
	self fileHandle = fileBits ifTrue: [Smalltalk unregisterExternalObject: fileIndex].
	fileBits := nil.	
	fileIndex := 0.