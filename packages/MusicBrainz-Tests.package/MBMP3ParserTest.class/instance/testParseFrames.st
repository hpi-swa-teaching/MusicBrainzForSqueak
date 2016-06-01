as yet unclassified
testParseFrames

	self parser stream reset.
	self parser stream nextPutAll: #(0).
	self parser stream reset.
	self parser id3size: 2.
	
	self assert: (self parser parseFrames).
	
	self parser stream reset.
	self parser stream nextPutAll: #(1).
	self parser stream reset.
	self parser id3size: -10.
	
	self assert: (self parser parseFrames).