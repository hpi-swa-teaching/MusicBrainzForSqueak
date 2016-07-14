importing
importFiles
	self files size = 0
		ifTrue: [self inform: self class noteNoFilesInFolder]
		ifFalse: [self notifyMainWindowAndClose]