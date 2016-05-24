as yet unclassified
testLabelFor
	| folderName | 
	folderName := self fileSelectionWindow labelFor: (FileDirectory on: '').
	self assert: (folderName class = ByteString)