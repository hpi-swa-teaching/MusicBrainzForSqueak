building
buildPlayButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		label: #labelForPlayerButton;
		frame: (0.65@0.50 corner: 1@0.60);
		action: #playSong
		