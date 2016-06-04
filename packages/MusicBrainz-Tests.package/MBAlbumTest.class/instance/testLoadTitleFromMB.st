as yet unclassified
testLoadTitleFromMB

	self
		assert: self album loadTitleFromMB
		equals: 'If You Wait' 
		description: 'Returned title for album should be ''If You Wait'''