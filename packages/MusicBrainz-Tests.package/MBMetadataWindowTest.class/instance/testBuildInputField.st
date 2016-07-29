TESTING: building
testBuildInputField
	| metadataSpec |
	self metadataWindow builder: MorphicToolBuilder new.
	metadataSpec := self metadataWindow buildInputField.
	self 
		 assert: metadataSpec class = PluggableInputFieldSpec;
		 assert: metadataSpec model class = MBMetadataWindow;
		 assert: metadataSpec frame = (0@0 corner: 1@0.1);
		 assert: metadataSpec getText = #showInInputField;
		 assert: metadataSpec setText = #updateMetadata:;
		 assert: metadataSpec indicateUnacceptedChanges = false