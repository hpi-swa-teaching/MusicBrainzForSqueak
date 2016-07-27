building
labelForPlayerButton
	self player ifNotNil: [
		self player isPlaying not
			ifTrue: [^ self class playIcon asMorph]].
	^ self class pauseIcon asMorph