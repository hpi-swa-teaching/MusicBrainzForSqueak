TESTING: building
testBuildListView
	| listSpec |
	self duplicateWindow builder: MorphicToolBuilder new.
	listSpec := self duplicateWindow buildListView.
	self 
		assert: listSpec class = PluggableMultiSelectionListSpec;
		assert: listSpec model class = MBDuplicateWindow;
		assert: listSpec list = 'duplicates';
		assert: listSpec getSelectionList = 'selectedEntitiesToDeleteAt:';
		assert: listSpec setSelectionList = 'selectedEntitiesToDeleteAt:Put:'; 
		assert: listSpec frame = (0@0 corner: 1@0.9)