accessing
contentDictionaryForPerfect: aMBEntity
	(aMBEntity isTrack)
		ifTrue: [	^ self contentDictionaryForPerfectTracks]
		ifFalse: [^ self contentDictionaryForPerfectAlbums].