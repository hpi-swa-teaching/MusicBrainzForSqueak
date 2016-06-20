as yet unclassified
cleanUp

	self stream close.
	FileDirectory deleteFilePath: (self stream name).