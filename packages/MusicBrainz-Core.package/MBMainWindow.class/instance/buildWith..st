as yet unclassified
buildWith: builder

| windowSpec treeSpec listSpec |

windowSpec:= builder pluggableWindowSpec new.
windowSpec 
		model: self;
		extent: 500@500;
		label: 'MusicBrainz';
		children: OrderedCollection new.

treeSpec:= builder pluggableTreeSpec new.
treeSpec 
		model:self;
		getChildren: #tracksForAlbum:;
		roots: #albums;
		frame: (0@0 corner:1@0.5).

listSpec:= builder pluggableListSpec new.
listSpec 
		model:self;
		list: #allTracks;
		frame: (0@0.5 corner:1@1).


windowSpec children add: treeSpec.
windowSpec children add: listSpec.
^ builder build: windowSpec.