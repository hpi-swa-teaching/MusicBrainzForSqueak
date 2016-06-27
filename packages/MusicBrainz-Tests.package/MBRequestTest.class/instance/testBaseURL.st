as yet unclassified
testBaseURL

	self
		assert: MBRequest baseURL 
		equals: 	'http://musicbrainz.org/ws/2/'
		description: 'Someone changed the URL to MusicBrainz-Instance'
	