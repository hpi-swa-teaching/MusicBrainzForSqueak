specs
passwordLabelSpec
	| labelMorph labelSpec |
	labelMorph := TextMorph new.
	labelMorph
		contents: 'Password:';
		readOnly: true.
	labelSpec := self builder pluggableScrollPaneSpec new.
	^ labelSpec 
		model: self;
		frame: (0@(self class lineHeight * 2) corner: self class labelWidth @(self class lineHeight * 3));
		borderWidth: 0;
		morphClass: TextMorph;
		morph: labelMorph
		