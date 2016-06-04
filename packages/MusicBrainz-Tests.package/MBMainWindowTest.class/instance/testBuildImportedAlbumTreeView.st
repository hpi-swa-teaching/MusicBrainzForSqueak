TESTING: opening and building
testBuildImportedAlbumTreeView

	| treeSpec |
	self mainWindow builder: MorphicToolBuilder new.
	treeSpec := self mainWindow buildImportedAlbumTreeView.
	self
		assert: treeSpec label = 'getAlbumName:';
		assert: treeSpec roots = 'albums';
		assert: treeSpec getChildren  = 'getTracklistForImportedAlbum:';
		assert: treeSpec frame = (0@0 corner: 0.35@0.9)
	
	