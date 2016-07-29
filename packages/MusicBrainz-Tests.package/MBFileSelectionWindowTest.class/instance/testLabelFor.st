TESTING: file and directory accessing
testLabelFor
	| folderName | 
	folderName := self fileSelectionWindow labelFor: (FileDirectory on: Smalltalk imagePath).
	self 
		assert: folderName class 
		equals: ByteString