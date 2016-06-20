building
buildSaveButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.15@0.9 corner: 0.25@1);
		label: 'Save';
		action: #saveToDisk
