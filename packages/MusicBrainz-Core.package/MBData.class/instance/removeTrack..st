accessing
removeTrack: anMBTrack 
| album |
album := anMBTrack albumEntity.
album tracklist remove: anMBTrack ifAbsent: [].
(album tracklist size = 0)
	ifTrue: [self albums remove: album ifAbsent:[]]