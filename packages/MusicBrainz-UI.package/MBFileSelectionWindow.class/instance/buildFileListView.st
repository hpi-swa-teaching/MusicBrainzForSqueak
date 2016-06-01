building
buildFileListView
	"Right hand view"
	| treeSpec |
	treeSpec := self builder pluggableTreeSpec new.
	^ treeSpec 
		model: self;
		roots: #fileNames;
		label: #fileNamesLocal:;
		frame: (0.5@0 corner: 1@1)