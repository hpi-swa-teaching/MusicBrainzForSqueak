TESTING: UI elements
testBuildWindow
	| windowSpec |
	self fileSelectionWindow builder: MorphicToolBuilder new.
	windowSpec := self fileSelectionWindow buildWindow.
	self 
		assert: windowSpec class = PluggableWindowSpec;
		assert: windowSpec model class = MBFileSelectionWindow;
		assert: windowSpec extent = (500@250);
		assert: windowSpec label = MBFileSelectionWindow labelForWindow;
		assert: windowSpec closeAction = 'closeButton';
		assert: windowSpec children = OrderedCollection new