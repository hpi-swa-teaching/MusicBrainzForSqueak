building
buildFileTreeView
	| treeSpec |
	treeSpec:= self builder pluggableTreeSpec new.
	^ treeSpec 
		model: self;
		roots: #rootDirectory;
		getChildren: #showSubFolderNamesFor:;
		label: #labelFor:;
		getSelected: #selectedDirectory;
		setSelected: #selectedDirectory:;
		frame: (0@0.1 corner:0.5@1)
