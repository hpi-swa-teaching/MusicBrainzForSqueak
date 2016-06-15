metadataView
playNewSong
	self player ifNotNil: 
		[self player closeFile].
	self player: (MBMP3Player onFileNamed: self selectedEntity filepath).
	self player play.
	self changed: #labelForPlayerButton
		