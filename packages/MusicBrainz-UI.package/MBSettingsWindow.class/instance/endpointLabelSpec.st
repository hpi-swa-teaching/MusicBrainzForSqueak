specs
endpointLabelSpec 
	| labelMorph labelSpec |
	labelMorph := TextMorph new.
	labelMorph
		contents: 'Endpoint:';
		readOnly: true.
	labelSpec := self builder pluggableScrollPaneSpec new.
	^ labelSpec 
		model: self;
		frame: (0@(self class lineHeight * 0) corner: self class labelWidth @(self class lineHeight * 1));
		borderWidth: 0;
		morphClass: TextMorph;
		morph: labelMorph
	