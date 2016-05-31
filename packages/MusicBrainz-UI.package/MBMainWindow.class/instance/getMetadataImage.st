metadataView
getMetadataImage
	(self selectedEntity class = MBAlbum and: (self coverView ~= nil))
		ifTrue: [self coverView morph image: self selectedEntity getFrontcover.
			self coverView setScrollDeltas]