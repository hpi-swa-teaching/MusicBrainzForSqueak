building
getHeaderViews
	
	| importedTracksSpec albumTreeSpec tracksForAlbumSpec collection |
	collection := OrderedCollection new.
	
	importedTracksSpec:= self builder pluggableTextSpec new.
	importedTracksSpec 
		model: self;
		frame: (0@0 corner: 0.35@0.05);
		getText: #labelTextForImportedAlbums;
		readOnly: true.
	
	albumTreeSpec:= self builder pluggableTextSpec new.
	albumTreeSpec 
		model: self;
		frame: (0.35@0 corner: 0.65@0.05);
		getText: #labelTextForAlbumTree;
		readOnly: true.	
	
	tracksForAlbumSpec:= self builder pluggableTextSpec new.	
	tracksForAlbumSpec
		model: self;
		frame: (0.65@0 corner: 1@0.05);
		getText: #labelTextForCoverView;
		readOnly: true.	
		
	collection 
		add: importedTracksSpec;
		add: albumTreeSpec;
		add: tracksForAlbumSpec.
		
	^collection