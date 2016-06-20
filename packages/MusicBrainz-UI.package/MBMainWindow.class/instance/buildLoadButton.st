building
buildLoadButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.025@0.9 corner: 0.125@1);
		label: 'Load';
		action: #loadFromDisk
