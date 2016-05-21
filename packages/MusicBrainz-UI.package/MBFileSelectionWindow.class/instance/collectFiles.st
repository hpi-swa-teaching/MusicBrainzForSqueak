as yet unclassified
collectFiles

	^ self selectedDirectory 
		ifNil: [#()]
		ifNotNil: [:d | d entries select: [:entry | entry isDirectory not]]