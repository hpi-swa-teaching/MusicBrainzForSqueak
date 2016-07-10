as yet unclassified
buildWindow
	| windowSpec |
	windowSpec := self builder pluggableWindowSpec new.
	^ windowSpec 
		model: self;
		extent: 400@400;
		label: 'Settings';
		children: OrderedCollection new