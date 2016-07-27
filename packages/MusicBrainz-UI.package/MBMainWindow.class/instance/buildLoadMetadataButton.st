building
buildLoadMetadataButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.65@0.95 corner: 0.85@1);
		label: self class labelForLoadMetadataButton;
		enabled: #isAlbumOrTrackSelected;
		action: #loadMetadataFromMB
