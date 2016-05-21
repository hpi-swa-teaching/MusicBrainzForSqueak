as yet unclassified
files 

	^ self selectedDirectory 
		ifNil: 
			[#()]
		ifNotNil:
			[self collectFiles: (self selectedDirectory)]