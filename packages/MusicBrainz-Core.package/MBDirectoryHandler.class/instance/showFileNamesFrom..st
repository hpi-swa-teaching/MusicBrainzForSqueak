as yet unclassified
showFileNamesFrom: aDirectory 
	| files |
	self currentDirectory: aDirectory.
	files := self getFileNamesFilesOnly: true.
	files
		do: [:filename | Transcript show: filename;
				 cr]