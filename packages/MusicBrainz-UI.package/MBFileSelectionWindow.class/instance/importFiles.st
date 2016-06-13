importing
importFiles
	self files size = 0
		ifTrue: [self inform: self noteNoFilesInFolder]
		ifFalse: [self notifyMainWindowAndDelete]