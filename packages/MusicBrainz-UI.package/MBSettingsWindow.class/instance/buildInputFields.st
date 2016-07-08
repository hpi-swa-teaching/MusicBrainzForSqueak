as yet unclassified
buildInputFields
	| inputSpecs inputHeight |
	inputHeight := 0.
	inputSpecs := OrderedCollection new.
	self settings keysDo: [:each |
		| inputSpec |
		inputSpec := self builder pluggableInputFieldSpec new.
		inputSpec 
			frame: (self labelWidth@inputHeight corner: 1@(inputHeight + self lineHeight));
			model: self;
			getText: #showInInputField;
			setText: #setSetting:;
			indicateUnacceptedChanges: true.
		inputSpecs add: inputSpec.
		inputHeight := inputHeight + self lineHeight].
	^ inputSpecs