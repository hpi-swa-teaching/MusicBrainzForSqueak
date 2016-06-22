as yet unclassified
testCreateTextFrameWith

	|comparisonCollection|
	comparisonCollection := OrderedCollection newFrom: #($T $E $S $T 0 0 0 8 0 0 0 $C $o $n $t $e $n $t).
	
	self assert: comparisonCollection equals: (self emptyParser createTextFrame: 'TEST' With: 'Content')