accessing
testLoadArtistsFromMB

	self
		assert: self track loadArtistsFromMB
		equals: 'London Grammar'
		description: 'Returned artists for track aren''t correct!'