TESTING: building
testBuildWindow
	| windowSpec |
	self metadataMergeWindow builder: MorphicToolBuilder new.
	windowSpec := self metadataMergeWindow buildWindow.
	self 
		assert: windowSpec class = PluggableWindowSpec;
		assert: windowSpec model class = MBMetadataMergeWindow;
		assert: windowSpec label = MBMetadataMergeWindow labelForWindow;
		assert: windowSpec extent = (600@400);
		assert: windowSpec children class = OrderedCollection