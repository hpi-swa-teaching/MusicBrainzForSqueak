TESTING: opening and building
testBuildFileListView
	| treeSpec |
	self fileSelectionWindow builder: MorphicToolBuilder new.
	treeSpec := self fileSelectionWindow buildFileListView.
	self 
		assert: treeSpec class = PluggableTreeSpec;
		assert: treeSpec model class = MBFileSelectionWindow;
		assert: treeSpec roots = 'fileNames';
		assert: treeSpec label = 'fileNamesLocal:';
		assert: treeSpec frame = (0.5@0 corner: 1@1)