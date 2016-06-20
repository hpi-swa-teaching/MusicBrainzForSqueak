accessing
isTrackSelected
	self selectedEntity
		ifNil: [^ false]
		ifNotNil: [^(self selectedEntity isMP3)] 