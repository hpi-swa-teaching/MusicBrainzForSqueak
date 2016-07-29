TESTING: building
testBuildWindow
	| windowSpec |
	self mainWindow builder: MorphicToolBuilder new.
	windowSpec := self mainWindow buildWindow.
	self 
		assert: PluggableWindowSpec equals: windowSpec class;
		assert: MBMainWindow equals: windowSpec model class;
		assert: (763@512) equals: windowSpec extent;
		assert: MBMainWindow labelForWindow equals: windowSpec label;
		assert: OrderedCollection new equals: windowSpec children