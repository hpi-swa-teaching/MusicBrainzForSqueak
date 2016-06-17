initialize-release
openFile: aPath
	pathToFile := aPath.
	fileBits := self primFileOpen: aPath.
	fileBits notNil ifTrue: 
		[fileIndex := Smalltalk registerExternalObject: fileBits.
		self register.]
	