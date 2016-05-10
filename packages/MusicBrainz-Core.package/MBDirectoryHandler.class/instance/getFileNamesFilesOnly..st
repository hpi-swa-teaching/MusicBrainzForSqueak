as yet unclassified
getFileNamesFilesOnly: isActive 
	| filenames |
	isActive
		ifTrue: [filenames := entries
						select: [:entry | entry isDirectory not];
						collect: [:entry | entry name]]
		ifFalse: [filenames := entries
						select: [:entry | entry isDirectory];
						collect: [:entry | entry name]].
	^ filenames