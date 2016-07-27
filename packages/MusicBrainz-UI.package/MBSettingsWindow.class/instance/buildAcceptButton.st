building
buildAcceptButton
	| acceptButtonSpec |
	acceptButtonSpec := self builder pluggableButtonSpec new.
	^ acceptButtonSpec 
		model: self;
		frame: (0.5@0.9 corner: 1@1);
		label: 'Save';
		action: #saveSettings