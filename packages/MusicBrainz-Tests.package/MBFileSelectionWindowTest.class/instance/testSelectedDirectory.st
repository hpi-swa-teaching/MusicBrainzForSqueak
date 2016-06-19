TESTING: accessing
testSelectedDirectory
	self fileSelectionWindow 
		files: #('1' '2');
		selectedDirectory: nil.
	self assert: self fileSelectionWindow files = #()