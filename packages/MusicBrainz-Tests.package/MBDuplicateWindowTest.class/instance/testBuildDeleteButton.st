TESTING: building
testBuildDeleteButton
	| buttonSpec |
	self duplicateWindow builder: MorphicToolBuilder new.
	buttonSpec := self duplicateWindow buildDeleteButton.
	self 
		assert: buttonSpec model class = MBDuplicateWindow;
		assert: buttonSpec frame = (0.0@0.9 corner: 1@1);
		assert: buttonSpec label = 'Delete selected tracks';
		assert: buttonSpec action = #deleteSelectedTracks
