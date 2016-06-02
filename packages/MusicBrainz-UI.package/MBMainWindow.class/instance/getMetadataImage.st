metadataView
getMetadataImage

	(self selectedEntity class entityName = 'release' and: (self coverView ~= nil))
		ifTrue: [self coverView morph image: self selectedEntity getFrontcover.
			self coverView setScrollDeltas].
	(self selectedEntity class entityName = 'recording' and: (self coverView ~= nil))
		ifTrue: [self coverView morph image: self selectedEntity albumentity getFrontcover.
			self coverView setScrollDeltas]