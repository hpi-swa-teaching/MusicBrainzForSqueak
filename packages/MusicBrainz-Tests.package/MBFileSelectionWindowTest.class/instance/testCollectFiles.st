as yet unclassified
testCollectFiles
	| files | 
	files := self fileSelectionWindow collectFiles: (FileDirectory on: Smalltalk imagePath).
	self assert: (files class = OrderedCollection)