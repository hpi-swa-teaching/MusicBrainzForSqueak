as yet unclassified
testLoadTitleFromMB

	self
		assert: self track loadTitleFromMB
		equals: 'Hey Now' 
		description: 'Returned title for track should be ''If You Wait'''