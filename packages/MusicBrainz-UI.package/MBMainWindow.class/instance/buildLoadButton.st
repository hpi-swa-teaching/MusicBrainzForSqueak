building
buildLoadButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.05@0.9 corner: 0.15@1);
		label: 'Load';
		action: #loadFromDisk
