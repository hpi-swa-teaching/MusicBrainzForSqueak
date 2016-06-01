metadataView
getMetadataImage
	(self selectedEntity class entityName = 'release' and: (self coverView ~= nil))
		ifTrue: [self coverView morph image: self selectedEntity getFrontcover.
			self coverView setScrollDeltas]