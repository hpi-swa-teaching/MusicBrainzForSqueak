TESTING: opening and building
testBuildHeaderViews
	
	| albumTreeSpec tracksForAlbumSpec headerViews |
	
	self mainWindow builder: MorphicToolBuilder new.
	headerViews := self mainWindow buildHeaderViews.
	albumTreeSpec := headerViews first.
	tracksForAlbumSpec := headerViews second.
	Transcript show: albumTreeSpec.
	Transcript show: tracksForAlbumSpec.
	
	
	self
		assert: albumTreeSpec frame = (0@0 corner: 0.65@0.05);
		assert: albumTreeSpec label = 'labelTextForAlbumTree';
		assert: albumTreeSpec enabled = false.
	
	self
		assert: tracksForAlbumSpec frame = (0.65@0 corner: 1@0.05);
		assert: tracksForAlbumSpec label = 'labelTextForCoverView';
		assert: tracksForAlbumSpec enabled = false.
	