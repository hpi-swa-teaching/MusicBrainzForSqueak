building
buildWriteTrackButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.525@0.95 corner: 0.65@1);
		label: 'Write Changes to File';
		enabled: #isWriteableTrackSelected;
		action: #writeAudioFile