as yet unclassified
testCreateFrameSizeBytes

	|comparisonCollection|
	comparisonCollection := OrderedCollection newFrom: #(0 6 121 50).
	
	self assert: comparisonCollection equals: (self emptyParser createFrameSizeBytes: 424242)