as yet unclassified
buildWindow
	| windowSpec |
	windowSpec := self builder pluggableWindowSpec new.
	^ windowSpec 
		model: self;
		extent: 400 @ 400;
		label: 'Metadata';
	      closeAction: #closeButton;
		children: OrderedCollection new