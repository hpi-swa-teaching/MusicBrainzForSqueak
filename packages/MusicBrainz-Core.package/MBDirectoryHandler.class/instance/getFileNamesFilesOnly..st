as yet unclassified
getFileNamesFilesOnly: isActive 
	| filenames files |
	isActive
		ifTrue: [files := (self currentDirectory entries) select: [:entry | entry isDirectory not].
				filenames := files collect: [:entry | entry name]]
		ifFalse: [files := (self currentDirectory entries) select: [:entry | entry isDirectory].
				filenames := files collect: [:entry | entry name]].
	^ filenames