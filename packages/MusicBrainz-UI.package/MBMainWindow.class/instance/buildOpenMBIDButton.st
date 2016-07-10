building
buildOpenMBIDButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.4@0.95 corner: 0.525@1);
		label: 'Open in Browser';
		enabled: #isAlbumOrTrackSelected;
		action: #openMBIDinBrower
