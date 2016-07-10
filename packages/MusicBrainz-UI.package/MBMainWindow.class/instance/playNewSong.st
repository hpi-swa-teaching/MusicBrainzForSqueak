metadataView
playNewSong
	self player ifNotNil: 
		[[self player closeFile] on: Error do: []].
	self player: (MBMP3Player onFileNamed: self selectedEntity filepath).
	[self player play. 
	self changed: #labelForPlayerButton]
		on: MessageNotUnderstood 
		do: [self inform: 'This is not a valid music file!']