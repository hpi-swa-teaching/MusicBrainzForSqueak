metadataView
playSong
	self player ifNotNil: [
		self player isPlaying
		ifTrue: [
			self player pause.
			self changed: #labelForPlayerButton.
			^ self]
		ifFalse: [
			self player resume.
			self changed: #labelForPlayerButton.
			^ self]
		].

	self selectedEntity = nil
		ifTrue: [^ self]