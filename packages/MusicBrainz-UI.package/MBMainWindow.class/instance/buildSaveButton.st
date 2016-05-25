building
buildSaveButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.2@0.9 corner: 0.3@1);
		label: 'Save';
		action: #saveToDisk
