building
toggleMenuList
	| menuChoice |
	menuChoice := UIManager default chooseFrom: #('Load STON file from disk' 'Save STON file to disk' 'Import files from disk').
	menuChoice = 1
	ifTrue: [self loadFromDisk].
	menuChoice = 2
	ifTrue: [self data saveToDisk].
	menuChoice = 3
	ifTrue: [self toggleImportWindow]