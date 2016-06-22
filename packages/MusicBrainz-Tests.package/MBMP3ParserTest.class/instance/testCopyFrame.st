as yet unclassified
testCopyFrame

	|comparisonCollection|
	comparisonCollection := OrderedCollection newFrom: #($T $E $S $T).
	self emptyParser stream reset.
	self emptyParser stream nextPutAll: #($T $E $S $T).
	self emptyParser stream reset.
	
	self assert: comparisonCollection equals: (self emptyParser copyFrame: 4)