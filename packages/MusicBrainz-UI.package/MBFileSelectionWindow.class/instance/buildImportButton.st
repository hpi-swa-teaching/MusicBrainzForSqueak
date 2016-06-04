building
buildImportButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec 
		model: self;
		action: #importFiles;
		label: 'Import';
		frame: (0@0 corner: 0.5@0.1)
