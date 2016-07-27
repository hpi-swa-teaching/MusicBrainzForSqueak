building
buildPlayNewTrackButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		label: self class labelForPlayNewTrackButton;
		enabled: #isNewTrackSelected;
		frame: (0.65@0.50 corner: 0.85@0.60);
		action: #playNewSong
		