as yet unclassified
testBuildAcceptButton
	| buttonSpec |
	self metadataMergeWindow builder: MorphicToolBuilder new.
	buttonSpec := self metadataMergeWindow buildAcceptButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBMetadataMergeWindow;
		assert: buttonSpec action = 'saveMerge';
		assert: buttonSpec label = MBMetadataMergeWindow labelForSaveButton;
		assert: buttonSpec frame = (0.5@0.9 corner: 1@1)