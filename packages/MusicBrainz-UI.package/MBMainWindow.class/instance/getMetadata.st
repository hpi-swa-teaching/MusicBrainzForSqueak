metadataView
getMetadata
	self selectedEntity class = MBAlbum
		ifTrue: [
			(self coverView) morph image: self selectedEntity getFrontcover.
			self coverView setScrollDeltas.
			^ self getMetadataAlbum].
	self selectedEntity class = MBTrack
		ifTrue: [^ self getMetadataTrack]
		ifFalse: [^ #()]