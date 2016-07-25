as yet unclassified
buildListView
	| listSpec |
	listSpec := self builder pluggableMultiSelectionListSpec new.
	^ listSpec 
		model: self;
		list: #duplicates;
		getSelectionList: #selectedEntitiesToDeleteAt:;
		setSelectionList: #selectedEntitiesToDeleteAt:Put:;
		frame: (0@0 corner: 1@0.9)
		