TESTING: building
testBuildHeaderViews
	| headerViews |
	self mainWindow builder: MorphicToolBuilder new.
	headerViews := self mainWindow buildHeaderViews.
	self 
		assert: OrderedCollection equals: headerViews class;
		assert: PluggableButtonSpec equals: headerViews first class;
		assert: MBMainWindow equals: headerViews first model class;
		assert: (0.2@0 corner: 0.65@0.05) equals: headerViews first frame;
		assert: 'labelTextForAlbumTree' equals: headerViews first label;
		assert: false equals: headerViews first enabled;
		assert: PluggableButtonSpec equals: headerViews second class;
		assert: MBMainWindow equals: headerViews second model class;
		assert: (0.65@0 corner: 1@0.05) equals: headerViews second frame;
		assert: 'labelTextForCoverView' equals: headerViews second label;
		assert: false equals: headerViews second enabled