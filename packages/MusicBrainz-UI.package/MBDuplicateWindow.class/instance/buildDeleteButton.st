as yet unclassified
buildDeleteButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.0@0.9 corner: 1@1);
		label: 'Delete selected tracks';
		action: #deleteSelectedTracks
