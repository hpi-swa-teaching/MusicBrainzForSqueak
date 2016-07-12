as yet unclassified
buildResetButton
	|  acceptButtonSpec |
	acceptButtonSpec := self builder pluggableButtonSpec new.
	^ acceptButtonSpec 
		model: self;
		frame: (0@0.95 corner: 0.5@1);
		label: 'Reset';
		action: #resetSettings