building
labelForPlayerButton
	self player ifNotNil: [
		self player isPlaying
		ifTrue: [^ 'Pause']
		].
	^ 'Play'