specs
endPointSpec 
	| inputSpec |
	inputSpec := self builder pluggableInputFieldSpec new.
	^ inputSpec 
		frame: (self class labelWidth@(self class lineHeight * 0) corner: 1@(self class lineHeight * 1));
		model: self;
		getText: #showInInputFieldEndpoint;
		editText: #setEndpoint:;
		indicateUnacceptedChanges: true