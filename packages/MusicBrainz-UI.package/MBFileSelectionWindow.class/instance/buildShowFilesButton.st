building
buildShowFilesButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec 
		model: self;
		action: #showFiles;
		label: 'Show Files';
		frame: (0.25@0 corner: 0.5@0.1)
