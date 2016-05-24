TESTING: methods
testLabelFor
	| folderName | 
	folderName := self fileSelectionWindow labelFor: (FileDirectory on: Smalltalk imagePath).
	self assert: folderName class = ByteString