building
buildWindow
	| windowSpec |
	windowSpec := self builder pluggableWindowSpec new.
	^ windowSpec 
		model: self;
		extent: 600@400;
		label: self class labelForWindow;
		children: OrderedCollection new