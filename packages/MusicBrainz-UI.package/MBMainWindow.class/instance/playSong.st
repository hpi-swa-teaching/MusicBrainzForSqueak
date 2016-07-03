metadataView
playSong
	self player
		ifNotNil: [self player isPlaying
				ifTrue: [self player pause.
					self changed: #labelForPlayerButton]
				ifFalse: [self player resume.
					self changed: #labelForPlayerButton]]