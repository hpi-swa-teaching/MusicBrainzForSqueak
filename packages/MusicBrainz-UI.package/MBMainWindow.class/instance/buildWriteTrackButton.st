building
buildWriteTrackButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.525@0.9 corner: 0.625@1);
		label: 'Write Changes to File';
		enabled: #isTrackSelected;
		action: #writeAudioFile
