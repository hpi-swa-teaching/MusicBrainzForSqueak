accessing
duplicates
	^ duplicates ifNil: [duplicates := self mainWindow data findDuplicates]