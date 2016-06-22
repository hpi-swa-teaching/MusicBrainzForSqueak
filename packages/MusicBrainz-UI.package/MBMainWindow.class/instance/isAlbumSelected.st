accessing
isAlbumSelected
	self selectedEntity
		ifNotNil: [(self selectedEntity class entityName = MBAlbum entityName)
			ifTrue: [^ true] ].
		^false