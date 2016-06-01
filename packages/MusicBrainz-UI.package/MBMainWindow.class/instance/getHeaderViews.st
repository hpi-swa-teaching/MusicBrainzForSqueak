building
getHeaderViews
	
	| albumTreeSpec tracksForAlbumSpec collection |
	collection := OrderedCollection new.
	
	albumTreeSpec:= self builder pluggableTextSpec new.
	albumTreeSpec 
		model: self;
		frame: (0@0 corner: 0.65@0.05);
		getText: #labelTextForAlbumTree;
		readOnly: true.	
	
	tracksForAlbumSpec:= self builder pluggableTextSpec new.	
	tracksForAlbumSpec
		model: self;
		frame: (0.65@0 corner: 1@0.05);
		getText: #labelTextForCoverView;
		readOnly: true.	
		
	collection
		add: albumTreeSpec;
		add: tracksForAlbumSpec.
		
	^collection