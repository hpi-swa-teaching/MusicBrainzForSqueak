building
buildFileListView
	| listSpec |
	listSpec := self builder pluggableListSpec new.
	^ listSpec 
		model: self;
		list: #fileNames;
		frame: (0.5 @ 0 corner: 1 @ 1)