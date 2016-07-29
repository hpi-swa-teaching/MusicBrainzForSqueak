TESTING: accessing
testSelectedEntitesToDelete
	| duplicates |
	duplicates := OrderedCollection new.
	duplicates add: MBMockData mockTrack.
	duplicates add: MBMockData mockTrack.
	self duplicateWindow selectedEntitiesToDelete: duplicates.
	self 
		assert: self duplicateWindow selectedEntitiesToDelete 
		equals: duplicates