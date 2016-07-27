building
buildWindow
	| windowSpec |
	windowSpec := self builder pluggableWindowSpec new.
	^ windowSpec 
		model: self;
		extent: 400@400;
		label: self class labelForSettingsWindow;
		children: OrderedCollection new