building
buildImportButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.35@0.9 corner: 0.45@1);
		label: 'Import';
		action: #toggleImportWindow
