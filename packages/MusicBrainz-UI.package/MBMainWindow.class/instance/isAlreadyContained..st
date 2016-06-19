im&ex-porting
isAlreadyContained: aTrack 
	| trackAlreadyContained |
	trackAlreadyContained := false.
	self albums
		do: [:album | album tracklist
				do: [:track | track filepath = aTrack fullName
						ifTrue: [trackAlreadyContained := true]]].
	^ trackAlreadyContained