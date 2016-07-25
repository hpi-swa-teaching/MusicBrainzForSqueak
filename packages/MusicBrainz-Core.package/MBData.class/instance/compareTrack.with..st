accessing
compareTrack: anMBTrack with: anotherMBTrack 

	^ ((anMBTrack getArtists  = anotherMBTrack getArtists)
		and: (anMBTrack getTitle = anotherMBTrack getTitle))