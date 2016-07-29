settings
defaultCoverSized: aString
	(aString = #small)
		ifTrue: [^ PNGReadWriter formFromFileNamed: (FileDirectory uri: 'albums/blankCover_250.png') fullName]
		ifFalse: [^ PNGReadWriter formFromFileNamed: (FileDirectory uri: 'albums/blankCover_500.png') fullName]