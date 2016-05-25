building
buildAlbumTreeView
	| treeSpec |
	treeSpec := self builder pluggableTreeSpec new.
	^ treeSpec
		model: self;
		getChildren: #getTracklistForAlbum:;
		roots: #getMBalbums;
		label: #getAlbumName:;
		getSelected: #selectedEntity;
		setSelected: #selectedEntity:;
		frame: (0.3@0 corner: 0.65@1)

