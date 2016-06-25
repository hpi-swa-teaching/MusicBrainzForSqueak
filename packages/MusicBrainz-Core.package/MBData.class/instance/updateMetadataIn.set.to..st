accessing
updateMetadataIn: aMBEntity set: aLabel to: aValue

	aMBEntity metadata at: aLabel put: aValue.
	(aLabel = 'Album' and: aMBEntity isTrack)
		ifTrue: [
			aMBEntity albumentity tracklist removeAllSuchThat: [:track | track filepath = aMBEntity filepath].
			self addTrack: aMBEntity
			].