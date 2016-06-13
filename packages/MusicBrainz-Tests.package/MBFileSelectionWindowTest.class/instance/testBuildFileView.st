TESTING: UI elements
testBuildFileView
	| treeSpec |
	self fileSelectionWindow builder: MorphicToolBuilder new.
	treeSpec := self fileSelectionWindow buildFileView.
	self 
		assert: treeSpec class = PluggableTreeSpec;
		assert: treeSpec model class = MBFileSelectionWindow;
		assert: treeSpec roots = 'files';
		assert: treeSpec label = 'fileLocalName:';
		assert: treeSpec frame = (0.5@0 corner: 1@1)