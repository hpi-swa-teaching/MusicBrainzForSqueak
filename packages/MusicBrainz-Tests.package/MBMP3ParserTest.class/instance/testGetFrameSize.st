as yet unclassified
testGetFrameSize

	self parser stream reset.
	self parser stream nextPutAll: #(0 0 0 0).
	self parser stream reset.
	self parser setID3Size.
	
	self assert: 0 equals: (self parser id3size).
	self assert: 4 equals: (self parser stream position)