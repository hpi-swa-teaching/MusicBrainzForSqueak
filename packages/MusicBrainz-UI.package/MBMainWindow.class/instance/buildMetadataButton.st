building
buildMetadataButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.65@0.9 corner: 1@1);
		label: 'Load Metadata from MusicBrainz';
		action: #loadMetadataFromMB
