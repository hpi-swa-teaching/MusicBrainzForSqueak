accessing
isWriteableTrackSelected
	self selectedEntity
		ifNotNil: [
			(self selectedEntity isTrack) 
				ifTrue: [^ self selectedEntity isMP3].
			(self selectedEntity isAlbum)
				ifTrue: [^ true]].
		^ false