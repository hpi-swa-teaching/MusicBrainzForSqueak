building
buildSaveButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self data;
		frame: (0.125@0.95 corner: 0.25@1);
		label: 'Save';
		action: #saveToDisk
