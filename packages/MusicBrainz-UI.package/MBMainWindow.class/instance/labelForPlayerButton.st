building
labelForPlayerButton
	self player ifNotNil: [
		self player isPlaying not
		ifTrue: [^ 'Play']
		].
	^ 'Pause'