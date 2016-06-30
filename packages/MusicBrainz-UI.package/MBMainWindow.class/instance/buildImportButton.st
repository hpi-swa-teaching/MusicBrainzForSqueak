building
buildImportButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.25@0.95 corner: 0.375@1);
		label: 'Import';
		action: #toggleImportWindow
