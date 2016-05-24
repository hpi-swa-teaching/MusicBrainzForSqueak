TESTING: opening and building
testDeprecatedAlbumTreeView
	| treeSpec |
	self mainWindow builder: MorphicToolBuilder new.
	treeSpec := self mainWindow buildDeprecatedAlbumTreeView.
	self 
		assert: treeSpec class = PluggableTreeSpec;
		assert: treeSpec model class = MBMainWindow;
		assert: treeSpec roots = 'albums';
		assert: treeSpec getChildren = 'tracksForAlbum:';
		assert: treeSpec frame = (0@0 corner: 0.3@0.3)