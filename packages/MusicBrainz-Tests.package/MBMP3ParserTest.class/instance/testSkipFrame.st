as yet unclassified
testSkipFrame

	self parser stream reset.
	self parser stream nextPutAll: #(0 0 0 0 0 0).
	self parser stream reset.
	self parser skipFrame: 6.
	
	self assert: 6 equals: (self parser stream position)