as yet unclassified
testBuildHeaderViews
	| headerViews |
	self mainWindow builder: MorphicToolBuilder new.
	headerViews := self mainWindow buildHeaderViews.
	self 
		assert: headerViews class = OrderedCollection;
		assert: headerViews first class = PluggableButtonSpec;
		assert: headerViews first model class = MBMainWindow;
		assert: headerViews first frame = (0.2@0 corner: 0.65@0.05);
		assert: headerViews first label = 'labelTextForAlbumTree';
		assert: headerViews first enabled = false;
		
		assert: headerViews second class = PluggableButtonSpec;
		assert: headerViews second model class = MBMainWindow;
		assert: headerViews second frame = (0.65@0 corner: 1@0.05);
		assert: headerViews second label = 'labelTextForCoverView';
		assert: headerViews second enabled = false