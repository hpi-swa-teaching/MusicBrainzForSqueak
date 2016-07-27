accessing
baseURL
	^ BaseURL ifNil: [
		MBRequest baseURL: 'http://musicbrainz.org/ws/2/'.
		MBRequest baseURL]