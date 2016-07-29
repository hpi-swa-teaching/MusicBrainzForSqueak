TESTING: loadFromMB
testLoadArtistsFromMB

	self
		assert: self album loadArtistsFromMB
		equals: 'London Grammar'
		description: 'Returned artists for album aren''t correct!'