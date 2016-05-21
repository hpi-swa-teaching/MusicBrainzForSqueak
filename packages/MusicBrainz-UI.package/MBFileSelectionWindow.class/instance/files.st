as yet unclassified
files 

	^ self selectedDirectory 
		ifNil: [#()]
		ifNotNil: [:d | d entries select: [:entry | entry isDirectory not]]