TESTING: file and directory accessing
testShowFolderNamesFor
	| folderNames |
	folderNames := self fileSelectionWindow showSubFolderNamesFor: (FileDirectory on: Smalltalk imagePath).
	self assert: (folderNames do: [ :entry | 
		entry class superclass = FileDirectory 
			ifTrue: [^true] 
			ifFalse: [^false]])
	