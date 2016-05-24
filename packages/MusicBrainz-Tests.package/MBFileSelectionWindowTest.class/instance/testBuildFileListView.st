TESTING: opening and building
testBuildFileListView
	| listSpec |
	self fileSelectionWindow builder: MorphicToolBuilder new.
	listSpec := self fileSelectionWindow buildFileListView.
	self 
		assert: listSpec class = PluggableListSpec;
		assert: listSpec model class = MBFileSelectionWindow;
		assert: listSpec list = 'fileNames';
		assert: listSpec frame = (0.5@0 corner: 1@1)