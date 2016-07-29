track handling
removeTrack: aMBTrack 
	| album |
	album := aMBTrack albumEntity.
	album tracklist remove: aMBTrack ifAbsent: [].
	(album tracklist isEmpty)
		ifTrue: [self albums remove: album ifAbsent:[]]