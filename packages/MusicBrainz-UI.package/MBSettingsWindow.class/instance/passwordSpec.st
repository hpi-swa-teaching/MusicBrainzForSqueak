specs
passwordSpec 
	| inputSpec |
	inputSpec := self builder pluggableInputFieldSpec new.
	^ inputSpec 
		frame: (self class labelWidth@(self class lineHeight * 2) corner: 1@(self class lineHeight * 3));
		model: self;
		getText: #showInInputFieldPassword;
		editText: #setPassword:;
		indicateUnacceptedChanges: true