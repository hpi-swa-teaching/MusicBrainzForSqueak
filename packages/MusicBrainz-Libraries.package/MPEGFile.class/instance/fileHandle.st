access
fileHandle
	(Smalltalk externalObjects at: fileIndex ifAbsent: [^nil]) == fileBits 
		ifTrue: [^fileBits]
		ifFalse: [^nil].
