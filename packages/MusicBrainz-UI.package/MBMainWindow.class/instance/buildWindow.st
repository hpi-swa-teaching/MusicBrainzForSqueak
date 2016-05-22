building
buildWindow
	| windowSpec |
	windowSpec := self builder pluggableWindowSpec new.
	^ windowSpec model: self;
		 extent: 700 @ 500;
		 label: 'MusicBrainz';
		 children: OrderedCollection new