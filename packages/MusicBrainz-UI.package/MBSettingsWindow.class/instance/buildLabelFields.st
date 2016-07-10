as yet unclassified
buildLabelFields
	| labelSpecs labelHeight labelMorph labelSpec|
	labelHeight := 0.
	labelSpecs := OrderedCollection new.
		
"	self settings keysDo: [:each |
		| labelSpec labelMorph |
		labelMorph := TextMorph new.
		labelMorph
			contents: each, ':';
			readOnly: true.
		labelSpec := self builder pluggableScrollPaneSpec new.
		labelSpec 
			model: self;
			frame: (0@labelHeight corner: self labelWidth@(labelHeight + self lineHeight));
			borderWidth: 0;
			morphClass: TextMorph;
			morph: labelMorph;
			color: Color blue.

		labelSpecs add: labelSpec.
		labelHeight := labelHeight + self lineHeight]."

		"ENDPOINT"
		labelMorph := TextMorph new.
		labelMorph
			contents: 'Endpoint:';
			readOnly: true.
		labelSpec := self builder pluggableScrollPaneSpec new.
		labelSpec 
			model: self;
			frame: (0@labelHeight corner: self labelWidth@(labelHeight + self lineHeight));
			borderWidth: 0;
			morphClass: TextMorph;
			morph: labelMorph;
			color: Color blue.
		labelSpecs add: labelSpec.
		labelHeight := labelHeight + self lineHeight.
		
		"USERNAME"
		labelMorph := TextMorph new.
		labelMorph
			contents: 'Username:';
			readOnly: true.
		labelSpec := self builder pluggableScrollPaneSpec new.
		labelSpec 
			model: self;
			frame: (0@labelHeight corner: self labelWidth@(labelHeight + self lineHeight));
			borderWidth: 0;
			morphClass: TextMorph;
			morph: labelMorph;
			color: Color blue.
		labelSpecs add: labelSpec.
		labelHeight := labelHeight + self lineHeight.	
			
		"PASSWORD"
		labelMorph := TextMorph new.
		labelMorph
			contents: 'Password:';
			readOnly: true.
		labelSpec := self builder pluggableScrollPaneSpec new.
		labelSpec 
			model: self;
			frame: (0@labelHeight corner: self labelWidth@(labelHeight + self lineHeight));
			borderWidth: 0;
			morphClass: TextMorph;
			morph: labelMorph;
			color: Color blue.
		labelSpecs add: labelSpec.
		labelHeight := labelHeight + self lineHeight.
		
		"AUTOLOAD"
		labelMorph := TextMorph new.
		labelMorph
			contents: 'Autoload:';
			readOnly: true.
		labelSpec := self builder pluggableScrollPaneSpec new.
		labelSpec 
			model: self;
			frame: (0@labelHeight corner: self labelWidth@(labelHeight + self lineHeight));
			borderWidth: 0;
			morphClass: TextMorph;
			morph: labelMorph;
			color: Color blue.
		labelSpecs add: labelSpec.
		labelHeight := labelHeight + self lineHeight.
	
	^ labelSpecs