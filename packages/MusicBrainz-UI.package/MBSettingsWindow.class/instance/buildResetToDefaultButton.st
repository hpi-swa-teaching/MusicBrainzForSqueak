as yet unclassified
buildResetToDefaultButton
	|  resetButtonSpec |
	resetButtonSpec := self builder pluggableButtonSpec new.
	^ resetButtonSpec 
		model: self;
		frame: (0@0.9 corner: 0.5@0.95);
		label: self class labelForResetToDefaultButton ;
		action: #resetSettingsToDefault