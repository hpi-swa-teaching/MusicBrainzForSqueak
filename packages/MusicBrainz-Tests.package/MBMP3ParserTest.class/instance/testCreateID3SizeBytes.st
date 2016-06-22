as yet unclassified
testCreateID3SizeBytes

	|comparisonCollection|
	comparisonCollection := OrderedCollection newFrom: #(0 25 114 50).
	self assert: comparisonCollection equals: (self emptyParser createID3SizeBytes: 424242)