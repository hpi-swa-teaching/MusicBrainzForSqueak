as yet unclassified
testSplitMetadata
	self mainWindow selectedMetadata: 'Label: Island'.
	self assert: self mainWindow splitMetadata equals: (Dictionary newFrom: {#label -> 'Label'. #value -> 'Island'})