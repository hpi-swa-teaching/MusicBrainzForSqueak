as yet unclassified
testBuildCoverView
	| coverSpec |
	self mainWindow builder: MorphicToolBuilder new.
	coverSpec := self mainWindow buildCoverView.
	self 
		assert: coverSpec class = PluggableScrollPaneSpec;
		assert: coverSpec model class = MBMainWindow;
		assert: coverSpec morphClass = ImageMorph;
		assert: coverSpec name = 'coverView';
		assert: coverSpec frame = (0.65@0.05 corner: 1@0.60)