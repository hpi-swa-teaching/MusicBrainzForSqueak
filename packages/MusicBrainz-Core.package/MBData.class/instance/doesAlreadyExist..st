accessing
doesAlreadyExist: aFile 
	| trackAlreadyContained |
	trackAlreadyContained := false.
	self albums
		do: [:album | album tracklist
				do: [:track | track filepath = aFile fullName
						ifTrue: [trackAlreadyContained := true]]].
	^ trackAlreadyContained