building
buildWindow
	| windowSpec |
	windowSpec := self builder pluggableWindowSpec new.
	^ windowSpec model: self;
		 extent: 500 @ 250;
		 label: 'FileDirectory';
		 children: OrderedCollection new