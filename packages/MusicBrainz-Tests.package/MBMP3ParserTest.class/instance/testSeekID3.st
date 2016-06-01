as yet unclassified
testSeekID3

	self parser stream reset.
	self parser stream nextPutAll: #(0 0 0 $I $D $3).
	self parser stream reset.
	
	self assert: (self parser seekID3).
	self assert: 6 equals: (self parser stream position)