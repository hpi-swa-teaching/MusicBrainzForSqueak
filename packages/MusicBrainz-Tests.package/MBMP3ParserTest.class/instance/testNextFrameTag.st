as yet unclassified
testNextFrameTag

	self parser stream reset.
	self parser stream nextPutAll: #($T $E $S $T).
	self parser stream reset.
	
	self assert: 'TEST' equals: (self parser nextFrameTag).
	self assert: 4 equals: (self parser stream position)