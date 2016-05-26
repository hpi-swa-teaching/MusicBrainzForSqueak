as yet unclassified
testBaseURL

	self
		assert: MBrequest baseURL 
		equals: 	'http://mb.mvoelker.me/ws/2/'
		description: 'Someone changed the URL to MusicBrainz-Instance'
	