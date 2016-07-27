specs
autoloadLabelSpec
	| labelMorph labelSpec |
	labelMorph := TextMorph new.
	labelMorph
		contents: 'Autoload:';
		readOnly: true.
	labelSpec := self builder pluggableScrollPaneSpec new.
	^ labelSpec 
		model: self;
		frame: (0@(self class lineHeight * 3) corner: self class labelWidth @(self class lineHeight * 4));
		borderWidth: 0;
		morphClass: TextMorph;
		morph: labelMorph