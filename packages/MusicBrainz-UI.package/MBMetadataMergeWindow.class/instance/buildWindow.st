as yet unclassified
buildWindow
	| windowSpec |
	windowSpec := self builder pluggableWindowSpec new.
	^ windowSpec 
		model: self;
		extent: 400 @ 400;
		label: 'Merge Metadata-Information';
	      closeAction: #closeButton;
		children: OrderedCollection new