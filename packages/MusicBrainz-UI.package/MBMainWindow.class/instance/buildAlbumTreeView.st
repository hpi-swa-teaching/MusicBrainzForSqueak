building
buildAlbumTreeView
	| treeSpec |
	treeSpec := self builder pluggableTreeSpec new.
	^ treeSpec
		model: self;
		getChildren: #getTracklistForAlbum:;
		roots: #albums;
		label: #getAlbumName:;
		getSelected: #selectedEntity;
		setSelected: #selectedEntity:;
		frame: (0@0.10 corner: 0.65@0.95)

