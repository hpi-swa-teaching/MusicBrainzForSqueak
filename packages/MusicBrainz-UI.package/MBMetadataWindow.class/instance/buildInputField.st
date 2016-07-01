building
buildInputField
	| metadataSpec |
	metadataSpec := self builder pluggableInputFieldSpec new.
	^ metadataSpec 
		model: self;
		frame: (0@0 corner: 1@0.1);
		getText: #showInInputField;
		setText: #updateMetadata:;
		indicateUnacceptedChanges: false