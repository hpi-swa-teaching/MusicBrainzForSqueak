TESTING: opening and building
testBuildCoverView
	| coverSpec |
	self mainWindow builder: MorphicToolBuilder new.
	coverSpec := self mainWindow buildCoverView.
	self
		assert: coverSpec name = #coverView;
		assert: coverSpec morphClass = ImageMorph;
		assert: coverSpec frame = (0.65@0 corner: 1@0.5)
		