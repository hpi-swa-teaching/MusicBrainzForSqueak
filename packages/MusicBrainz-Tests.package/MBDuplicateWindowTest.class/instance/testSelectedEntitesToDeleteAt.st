TESTING: accessing
testSelectedEntitesToDeleteAt
	| duplicates |
	duplicates := OrderedCollection new.
	duplicates add: MBMockData mockTrack.
	self duplicateWindow selectedEntitiesToDelete: duplicates.
	self 
		assert: (self duplicateWindow selectedEntitiesToDeleteAt: 1) metadata
		equals: MBMockData mockTrack metadata