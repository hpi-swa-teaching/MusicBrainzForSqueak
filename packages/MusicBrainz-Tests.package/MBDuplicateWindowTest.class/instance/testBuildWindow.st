as yet unclassified
testBuildWindow
	| windowSpec |
	self duplicateWindow builder: MorphicToolBuilder new.
	windowSpec := self duplicateWindow buildWindow.
	self 
		assert: windowSpec class = PluggableWindowSpec;
		assert: windowSpec model class = MBDuplicateWindow;
		assert: windowSpec extent = (500@250);
		assert: windowSpec label = MBDuplicateWindow labelForWindow;
		assert: windowSpec children = OrderedCollection new