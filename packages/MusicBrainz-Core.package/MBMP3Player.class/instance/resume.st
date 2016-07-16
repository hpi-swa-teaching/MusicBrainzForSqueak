playing
resume
	| currentPosition |
	currentPosition := self soundPosition.
	self 
		play;
		soundPosition: currentPosition