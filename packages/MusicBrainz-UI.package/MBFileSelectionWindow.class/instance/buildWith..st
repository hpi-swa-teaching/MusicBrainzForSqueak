as yet unclassified
buildWith: builder

| windowSpec treeSpec listSpec |

windowSpec:= builder pluggableWindowSpec new.
windowSpec 
		model: self;
		extent: 500@250;
		label: 'FileDirectory';
		children: OrderedCollection new.

treeSpec:= builder pluggableTreeSpec new.
treeSpec 
		model: self;
		roots: #rootDirectory;
		getChildren: #showFileNamesFor:;
		label: #labelFor:;
		getSelected: #selectedDirectory;
		setSelected: #selectedDirectory:;
		frame: (0@0 corner:0.5@1).

listSpec:= builder pluggableListSpec new.
listSpec
		model: self;
		list: #fileNames;
		frame: (0.5@0 corner: 1@1).

windowSpec children add: treeSpec.
windowSpec children add: listSpec.
^ builder build: windowSpec