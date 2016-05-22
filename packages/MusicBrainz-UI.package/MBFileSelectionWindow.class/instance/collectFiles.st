file and directory accessing
collectFiles
	^ self selectedDirectory
		ifNil: [#()]
		ifNotNil: [:d | d entries
				select: [:entry | entry isDirectory not]]