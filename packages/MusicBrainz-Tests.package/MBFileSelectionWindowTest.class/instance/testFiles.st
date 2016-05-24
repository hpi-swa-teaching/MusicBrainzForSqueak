as yet unclassified
testFiles
	self fileSelectionWindow selectedDirectory: (FileDirectory on: Smalltalk imagePath). 
	self assert: (self fileSelectionWindow fileNames class = OrderedCollection)