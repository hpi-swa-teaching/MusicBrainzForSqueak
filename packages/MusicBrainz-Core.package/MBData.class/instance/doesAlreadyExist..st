file handling
doesAlreadyExist: aFile 
	^ self albums
		anySatisfy:  [:album |
			album tracklist
				anySatisfy: [:track |	track filepath = aFile fullName]]