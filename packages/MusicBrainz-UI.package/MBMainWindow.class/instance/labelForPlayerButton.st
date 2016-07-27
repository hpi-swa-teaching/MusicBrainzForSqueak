building
labelForPlayerButton
	self player ifNotNil: [
		self player isPlaying not
			ifTrue: [^ UiSilkIcons controlPlayIcon asMorph]].
	^ UiSilkIcons controlPauseIcon asMorph