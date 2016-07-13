as yet unclassified
testBuildDeleteButton
	| buttonSpec |
	self metadataWindow builder: MorphicToolBuilder new.
	buttonSpec := self metadataWindow buildDeleteButton.
	self assert: buttonSpec class = PluggableButtonSpec;
		 assert: buttonSpec model class = MBMetadataWindow;
		 assert: buttonSpec frame
			= (0@0.9 corner: 1@1);
		assert: buttonSpec enabled = #isMetadataSelected;
		assert: buttonSpec label= 'Delete';
		assert: buttonSpec action = #deleteMetadata