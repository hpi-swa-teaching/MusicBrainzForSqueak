as yet unclassified
buildWindow
	| windowSpec |
	windowSpec := self builder pluggableWindowSpec new.
	^ windowSpec 
		 model: self;
		 extent: 500@250;
		 label: self class labelForWindow;
		 closeAction: #closeButton;
		 children: OrderedCollection new