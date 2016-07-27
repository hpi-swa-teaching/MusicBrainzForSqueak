metadataView
getMetadataImage
	(self selectedEntity isAlbum and: self coverView notNil)
		ifTrue: [self coverView morph image: self selectedEntity getCover.
			self coverView setScrollDeltas].
	(self selectedEntity isTrack and: self coverView notNil)
		ifTrue: [self coverView morph image: self selectedEntity albumEntity getCover.
			self coverView setScrollDeltas]