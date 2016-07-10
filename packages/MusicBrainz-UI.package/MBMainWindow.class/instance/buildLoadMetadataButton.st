building
buildLoadMetadataButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.65@0.95 corner: 0.85@1);
		label: 'Load Metadata from MusicBrainz';
		enabled: #isAlbumOrTrackSelected;
		action: #loadMetadataFromMB
