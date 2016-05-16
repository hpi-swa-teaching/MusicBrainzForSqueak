as yet unclassified
showFileNames
	| files |
	files := (self getFileNamesFilesOnly: false), (self getFileNamesFilesOnly: true).
	^ files