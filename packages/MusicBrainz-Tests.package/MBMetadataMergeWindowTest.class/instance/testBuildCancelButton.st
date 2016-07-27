as yet unclassified
testBuildCancelButton
	| buttonSpec |
	self metadataMergeWindow builder: MorphicToolBuilder new.
	buttonSpec := self metadataMergeWindow buildCancelButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBMetadataMergeWindow;
		assert: buttonSpec action = 'cancelMerge';
		assert: buttonSpec label = MBMetadataMergeWindow labelForCancelButton;
		assert: buttonSpec frame = (0@0.9 corner: 0.5@1)