as yet unclassified
testResetSettings
	MBRequest resetSettings.
	self 
		assert: MBRequest baseURL 
		equals: 'http://musicbrainz.org/ws/2/';
		
		assert: MBRequest username
		equals: '';
		
		assert: MBRequest password
		equals: ''
	