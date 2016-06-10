metadataView
openOnSpotify
	self selectedEntity = nil
		ifTrue: [^ self].
	self selectedEntity class entityName = 'release'
		ifTrue: [MBRequest openTrackOnSpotify: self selectedEntity tracklist first].
	self selectedEntity class entityName = 'recording'
		ifTrue: [MBRequest openTrackOnSpotify: self selectedEntity]