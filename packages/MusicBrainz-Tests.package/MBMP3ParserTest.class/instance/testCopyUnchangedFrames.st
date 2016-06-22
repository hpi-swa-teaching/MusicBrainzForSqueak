as yet unclassified
testCopyUnchangedFrames

	|comparisonCollection inputDictionary inputCollection|
	comparisonCollection := OrderedCollection newFrom: 
		#($T $C $O $N 0 0 0 5 0 0 $G $E $N $R $E).
	inputCollection := OrderedCollection newFrom: 
		#($T $I $M $E 0 0 0 4 0 0 $T $I $M $E $T $C $O $N 0 0 0 5 0 0 $G $E $N $R $E).
	inputDictionary := Dictionary newFrom: {#'Time' -> #''}.
	
	self emptyParser stream reset.
	self emptyParser stream ascii.
	self emptyParser stream nextPutAll: inputCollection.
	self emptyParser stream reset.
	self emptyParser stream binary.
	self emptyParser id3size: (inputCollection size - 9).
	
	self assert: (comparisonCollection asByteArray) equals:  ((self emptyParser copyUnchangedFrames: inputDictionary) asByteArray)