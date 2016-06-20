building
buildEditMetadataButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.4@0.9 corner: 0.5@1);
		label: 'Edit Metadata';
		enabled: #isMetadataSelected;
		action: #editMetadata
