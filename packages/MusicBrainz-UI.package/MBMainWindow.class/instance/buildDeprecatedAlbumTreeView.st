building
buildDeprecatedAlbumTreeView
	| treeSpec |
	treeSpec := self builder pluggableTreeSpec new.
	^ treeSpec 
		model:self;
		getChildren: #tracksForAlbum:;
		roots: #albums;
		frame: (0@0 corner:0.3@0.3)