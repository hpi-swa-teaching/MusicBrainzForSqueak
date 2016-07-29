testing
testSeekMagicIdentifier
	self emptyParser stream ascii.
	self emptyParser stream reset.
	self emptyParser stream nextPutAll: #(0 0  $I $D $3 ).
	self emptyParser stream reset.
	self emptyParser stream binary.
	self assert: self emptyParser seekMagicIdentifier.
	self assert: 5 equals: self emptyParser stream position