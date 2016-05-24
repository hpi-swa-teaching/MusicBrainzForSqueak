as yet unclassified
testGetArtists

	| artists |
	
	artists := self track getArtists.
	self
		assert: (OrderedCollection newFrom: #('London Grammar'))
		equals: artists
		description: 'The artists of track do not match'