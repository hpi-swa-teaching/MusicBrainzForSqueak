building
buildEditMetadataButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.5@0.9 corner: 0.6@1);
		label: 'Edit Metadata';
		enabled: #isActive;
		action: #editMetaData
