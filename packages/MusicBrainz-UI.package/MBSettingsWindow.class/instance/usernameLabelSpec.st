specs
usernameLabelSpec 
	| labelMorph labelSpec |
	labelMorph := TextMorph new.
	labelMorph
		contents: 'Username:';
		readOnly: true.
	labelSpec := self builder pluggableScrollPaneSpec new.
	^ labelSpec
		model: self;
		frame: (0@(self class lineHeight * 1) corner: self class labelWidth @(self class lineHeight * 2));
		borderWidth: 0;
		morphClass: TextMorph;
		morph: labelMorph