building
buildHeaderViews
	
	| albumTreeSpec tracksForAlbumSpec headerViews |
	headerViews := OrderedCollection new.
	
	albumTreeSpec := self builder pluggableButtonSpec new.
	albumTreeSpec 
		model: self;
		frame: (0@0 corner: 0.65@0.05);
		label: #labelTextForAlbumTree;
		enabled: false.
	
	tracksForAlbumSpec:= self builder pluggableButtonSpec new.	
	tracksForAlbumSpec
		model: self;
		frame: (0.65@0 corner: 1@0.05);
		label: #labelTextForCoverView;
		enabled: false.	
		
	headerViews
		add: albumTreeSpec;
		add: tracksForAlbumSpec.
		
	^ headerViews