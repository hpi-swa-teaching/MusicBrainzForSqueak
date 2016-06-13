UI elements
buildFileView
	| treeSpec |
	treeSpec := self builder pluggableTreeSpec new.
	^ treeSpec 
		model: self;
		roots: #files;
		label: #fileLocalName:;
		frame: (0.5@0 corner: 1@1)