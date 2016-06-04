TESTING: opening and building
testBuildFileTreeView
	| treeSpec |
	self fileSelectionWindow builder: MorphicToolBuilder new.
	treeSpec := self fileSelectionWindow buildFileTreeView.
	self 
		assert: treeSpec class = PluggableTreeSpec;
		assert: treeSpec model class = MBFileSelectionWindow;
		assert: treeSpec roots = 'rootDirectory';
		assert: treeSpec getChildren = 'showSubFolderNamesFor:';
		assert: treeSpec label = 'labelFor:';
		assert: treeSpec getSelected = 'selectedDirectory';
		assert: treeSpec setSelected = 'selectedDirectory:';
		assert: treeSpec frame = (0@0.1 corner: 0.5@1)