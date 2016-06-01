building
buildWindow
	| windowSpec |
	windowSpec := self builder pluggableWindowSpec new.
	^ windowSpec 
		model: self;
		extent: 763 @ 512;
		label: 'MusicBrainz';
		children: OrderedCollection new