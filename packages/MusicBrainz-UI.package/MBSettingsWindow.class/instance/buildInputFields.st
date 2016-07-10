as yet unclassified
buildInputFields
	| inputSpecs inputHeight inputSpec |
	inputHeight := 0.
	inputSpecs := OrderedCollection new.
"	self settings keysDo: [:each |
		| inputSpec |
		inputSpec := self builder pluggableInputFieldSpec new.
		inputSpec 
			frame: (self labelWidth@inputHeight corner: 1@(inputHeight + self lineHeight));
			model: self;
			getText: #showInInputField;
			setText: #setSetting:;
			indicateUnacceptedChanges: true.
		inputSpecs add: inputSpec.
		inputHeight := inputHeight + self lineHeight]."

	"ENDPOINT"	
	inputSpec := self builder pluggableInputFieldSpec new.
	inputSpec 
		frame: (self labelWidth@inputHeight corner: 1@(inputHeight + self lineHeight));
		model: self;
		getText: #showInInputFieldEndpoint;
		setText: #setEndpoint:;
		indicateUnacceptedChanges: true.
	inputSpecs add: inputSpec.
	inputHeight := inputHeight + self lineHeight.

	"USERNAME"
	inputSpec := self builder pluggableInputFieldSpec new.
	inputSpec 
		frame: (self labelWidth@inputHeight corner: 1@(inputHeight + self lineHeight));
		model: self;
		getText: #showInInputFieldUsername;
		setText: #setUsername:;
		indicateUnacceptedChanges: true.
	inputSpecs add: inputSpec.
	inputHeight := inputHeight + self lineHeight.

	"PASSWORD"
	inputSpec := self builder pluggableInputFieldSpec new.
	inputSpec 
		frame: (self labelWidth@inputHeight corner: 1@(inputHeight + self lineHeight));
		model: self;
		getText: #showInInputFieldPassword;
		setText: #setPassword:;
		indicateUnacceptedChanges: true.
	inputSpecs add: inputSpec.
	inputHeight := inputHeight + self lineHeight.

	"AUTOLOAD"
	inputSpec := self builder pluggableCheckBoxSpec new.
	inputSpec 
		frame: (self labelWidth@inputHeight corner: 1@(inputHeight + self lineHeight));
		model: self;
		label: #labelForAutoload;
		state: #showInInputFieldAutoload;
		enabled: true;
		action: #setAutoload:.
	inputSpecs add: inputSpec.
	inputHeight := inputHeight + self lineHeight.

	^ inputSpecs