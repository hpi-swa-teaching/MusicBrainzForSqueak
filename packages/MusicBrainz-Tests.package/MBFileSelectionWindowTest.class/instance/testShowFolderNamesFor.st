TESTING: methods
testShowFolderNamesFor

	| folderNames |
	folderNames := self fileSelectionWindow showFolderNamesFor: (FileDirectory on: Smalltalk imagePath).
	self assert: (folderNames do: [ :entry | 
		entry class = DosFileDirectory 
			ifTrue: [^true] 
			ifFalse: [^false]])
	