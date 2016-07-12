as yet unclassified
buildResetToDefaultButton
	|  acceptButtonSpec |
	acceptButtonSpec := self builder pluggableButtonSpec new.
	^ acceptButtonSpec 
		model: self;
		frame: (0@0.9 corner: 0.5@0.95);
		label: 'Reset to Default';
		action: #resetSettingsToDefault