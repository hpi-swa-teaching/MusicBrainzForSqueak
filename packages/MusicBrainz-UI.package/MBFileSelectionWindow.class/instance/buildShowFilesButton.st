UI elements
buildShowFilesButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec 
		model: self;
		action: #selectImportMethod;
		label: self class labelForShowFilesButton;
		frame: (0.25@0 corner: 0.5@0.1)
