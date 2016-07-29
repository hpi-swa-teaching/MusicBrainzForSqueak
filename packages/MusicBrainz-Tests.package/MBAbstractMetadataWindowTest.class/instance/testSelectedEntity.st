TESTING: accessing
testSelectedEntity
	self abstractMetadataWindow selectedEntity: MBMockData mockTrack.
	self 
		assert: self abstractMetadataWindow selectedEntity getTitle
		equals: 'Epsilon - Original Remix'
		description: 'Someone changed the accessor'
