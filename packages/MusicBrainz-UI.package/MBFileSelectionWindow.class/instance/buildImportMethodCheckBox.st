building
buildImportMethodCheckBox
	| buttonSpec |
	buttonSpec := self builder pluggableCheckBoxSpec new.
	^ buttonSpec 
		model: self;
		label: #labelForImportMethodCheckBox;
		frame: (0.25@0 corner: 0.5@0.1);
		state: #importMethod;
		action: #toggleImportMethod
		
