building
buildOpenMBIDButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.9@0.9 corner: 1@1);
		label: 'Open';
		action: #openMBIDinBrower
