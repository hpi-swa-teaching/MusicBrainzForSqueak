as yet unclassified
testBuildCoverView
	| coverSpec |
	self mainWindow builder: MorphicToolBuilder new.
	coverSpec := self mainWindow buildCoverView.
	self 
		assert: PluggableScrollPaneSpec equals: coverSpec class;
		assert: MBMainWindow equals: coverSpec model class;
		assert: ImageMorph equals: coverSpec morphClass;
		assert: 'coverView' equals: coverSpec name;
		assert: (0.65@0.05 corner: 1@0.50) equals: coverSpec frame