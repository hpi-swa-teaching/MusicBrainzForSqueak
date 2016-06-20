building
buildImportButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.275@0.9 corner: 0.375@1);
		label: 'Import';
		action: #toggleImportWindow
