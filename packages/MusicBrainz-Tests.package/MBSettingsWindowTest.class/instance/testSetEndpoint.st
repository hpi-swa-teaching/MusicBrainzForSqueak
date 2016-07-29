TESTING: setting
testSetEndpoint

	| endpoint |
	endpoint := 'https://beta.musicbrainz.org/'.
	self settingsWindow setEndpoint: endpoint.
	self 	
		assert: endpoint 
		equals: (self settingsWindow settings at: 'Endpoint')