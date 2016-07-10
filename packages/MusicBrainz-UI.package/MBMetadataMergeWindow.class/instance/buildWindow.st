building
buildWindow
	| windowSpec |
	windowSpec := self builder pluggableWindowSpec new.
	^ windowSpec 
		model: self;
		extent: 600@400;
		label: 'Merge Metadata-Information';
		children: OrderedCollection new