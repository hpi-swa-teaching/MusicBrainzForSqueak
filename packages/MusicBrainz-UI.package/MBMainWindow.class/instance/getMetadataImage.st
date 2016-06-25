metadataView
getMetadataImage

	(self selectedEntity isAlbum and: (self coverView ~= nil))
		ifTrue: [self coverView morph image: self selectedEntity getCover.
			self coverView setScrollDeltas].
	(self selectedEntity isTrack and: (self coverView ~= nil))
		ifTrue: [self coverView morph image: self selectedEntity albumentity getCover.
			self coverView setScrollDeltas]