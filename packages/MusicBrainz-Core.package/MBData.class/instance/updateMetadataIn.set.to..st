metadata-management
updateMetadataIn: aMBEntity set: aLabel to: aValue

	aMBEntity metadata at: aLabel put: aValue.
	(aValue = '')
		ifTrue: [aMBEntity metadata removeKey: aLabel ifAbsent: []].
	(aMBEntity isTrack and: aLabel = #'Album')
		ifTrue: [self moveToNewAlbum: aMBEntity].
	(aMBEntity isAlbum and: (self class labelsToAdoptInTracks includes: aLabel))
		ifTrue: [self updateMetadataInContainedTracksOf: aMBEntity set: aLabel to: aValue]
