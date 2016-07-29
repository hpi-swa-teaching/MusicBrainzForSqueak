TESTING: metadataView
testLoadMetadataFromMB 
	self mainWindow selectedEntity: nil.
	self mainWindow loadMetadataFromMB.
	self 
		assert: self mainWindow getMetadata
		equals: #() 
		description: 'Should return an empty collection'.
		
	self mainWindow selectedEntity: MBMockData mockAlbum.
	self mainWindow selectedEntity mbid: self mainWindow selectedEntity findMBID.
	self mainWindow loadMetadataFromMB.
	self 
		assert: self mainWindow selectedEntity metadata
		equals: (Dictionary newFrom: {#Artist->'Kygo'. #Label->'Ensis Records'. #Media->'Digital Media'. #Title->'Epsilon'. #Year->'2013'})
		description: 'Returned wrong metadata'