building
buildImportedAlbumTreeView
	| treeSpec |
	treeSpec := self builder pluggableTreeSpec new.
	^ treeSpec
		model: self;
		getChildren: #getTracklistForImportedAlbum:;
		roots: #importedAlbums;
		label: #getAlbumName:;
		frame: (0@0 corner: 0.3@1)

