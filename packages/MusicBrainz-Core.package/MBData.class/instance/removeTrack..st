accessing
removeTrack: anMBTrack 
	| album |
	album := anMBTrack albumEntity.
	album tracklist remove: anMBTrack ifAbsent: [].
	(album tracklist isEmpty)
		ifTrue: [self albums remove: album ifAbsent:[]]