accessing
doesAlreadyExist: aFile 
	self albums
		do: [:album | album tracklist
				do: [:track | track filepath = aFile fullName
						ifTrue: [^ true]]].
	^ false