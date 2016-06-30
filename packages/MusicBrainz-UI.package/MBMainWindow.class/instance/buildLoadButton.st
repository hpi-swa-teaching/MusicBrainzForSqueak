building
buildLoadButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.0@0.95 corner: 0.125@1);
		label: 'Load';
		action: #loadFromDisk
