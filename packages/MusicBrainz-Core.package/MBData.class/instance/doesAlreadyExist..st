file handling
doesAlreadyExist: aFile 
	self albums
		do: [:album |
			album tracklist
				detect: [:track |	track filepath = aFile fullName]
				ifFound: [^ true]
				ifNone: [ ^ false] ].