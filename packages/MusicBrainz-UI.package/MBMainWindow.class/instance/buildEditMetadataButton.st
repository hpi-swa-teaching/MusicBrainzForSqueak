building
buildEditMetadataButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.85@0.95 corner: 1@1);
		label: self class labelForEditMetadataButton;
		enabled: #isAlbumOrTrackSelected;
		action: #toggleMetadataWindow
