TESTING: accessing
testGetArtists

	self
		assert: (OrderedCollection newFrom: #('Testartist1' 'Testartist2'))
		equals: self track getArtists asOrderedCollection
		description: 'The artists of track do not match'