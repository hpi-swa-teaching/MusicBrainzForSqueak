as yet unclassified
testGetMBMetadata

	| index |
	self metadataMergeWindow mBMetadata: nil.
	index := self metadataMergeWindow getMBMetadata find: 'Epsilon'.
	self assert: (self metadataMergeWindow getMBMetadata at: index) equals: 'Epsilon'