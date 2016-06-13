TESTING: file and directory accessing
testShowCurrentFiles
	self fileSelectionWindow showCurrentFiles.
	self assert: self fileSelectionWindow files class = Array