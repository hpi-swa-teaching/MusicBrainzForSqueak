as yet unclassified
testBuildWindow
	| windowSpec |
	self metadataWindow builder: MorphicToolBuilder new.
	windowSpec := self metadataWindow buildWindow.
	self assert: windowSpec class = PluggableWindowSpec;
		 assert: windowSpec model class = MBMetadataWindow;
		 assert: windowSpec extent = (400@400);
		 assert: windowSpec label = 'Metadata';
		 assert: windowSpec closeAction = #closeButton