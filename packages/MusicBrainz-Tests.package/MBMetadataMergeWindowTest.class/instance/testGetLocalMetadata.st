as yet unclassified
testGetLocalMetadata

	| index |
	self metadataMergeWindow localMetadata: nil.
	index := self metadataMergeWindow getMBMetadata find: 'Epsilon'.
	self assert: (self metadataMergeWindow getLocalMetadata at: index) equals: 'Epsilon'