accessing
baseURL
	^ BaseURL ifEmpty: [MBRequest baseURL: 'http://musicbrainz.org/ws/2/']