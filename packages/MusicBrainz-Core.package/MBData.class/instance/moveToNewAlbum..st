accessing
moveToNewAlbum: aMBTrack
"The metadata at Album should already be changed to new value, but albumentity not"

	| oldAlbum |
	oldAlbum := aMBTrack albumentity.
	oldAlbum tracklist remove: aMBTrack ifAbsent:[].
	(oldAlbum tracklist size < 1)
		ifTrue: [self albums remove: oldAlbum ifAbsent: []].
	self addTrack: aMBTrack