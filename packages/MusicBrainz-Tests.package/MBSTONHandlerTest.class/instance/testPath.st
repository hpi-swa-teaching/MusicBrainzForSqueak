as yet unclassified
testPath

	self
		assert: (MBSTONHandler path) class superclass
		equals: FileDirectory
		description: 'Returned value is not a FileDirectory'