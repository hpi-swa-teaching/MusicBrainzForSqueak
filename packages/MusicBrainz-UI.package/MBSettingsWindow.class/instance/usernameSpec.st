specs
usernameSpec 
	| inputSpec |
	inputSpec := self builder pluggableInputFieldSpec new.
	inputSpec 
		frame: (self class labelWidth@0.1 corner: 1@(0.1 + self class lineHeight));
		model: self;
		getText: #showInInputFieldUsername;
		editText: #setUsername:;
		indicateUnacceptedChanges: true.
	^ inputSpec
