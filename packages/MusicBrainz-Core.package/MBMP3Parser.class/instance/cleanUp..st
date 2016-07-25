as yet unclassified
cleanUp: aFile
self stream close.
	aFile close.
	FileDirectory deleteFilePath: aFile name.