metadataView
playSong
	
	self player ifNotNil: [
			self player pause.
			^ self
		].

	self selectedEntity = nil
		ifTrue: [^ self].
"	self selectedEntity class entityName = 'release'
		ifTrue: [^ self getMetadataAlbum]."
	self selectedEntity class entityName = 'recording'
		ifTrue: [
			self player: (StreamingMP3Sound onFileNamed: self selectedEntity filepath).
			self player play.
			]