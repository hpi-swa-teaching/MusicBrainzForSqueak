building
buildHeaderViews
	| headerViews albumButtonSpec metadataButtonSpec |
	headerViews := OrderedCollection new.

	albumButtonSpec := self builder pluggableButtonSpec new.
	albumButtonSpec 
		model: self;
		frame: (0.2@0.00 corner: 0.65@0.05);
		label: #'labelTextForAlbumTree';
		enabled: false.
	
	metadataButtonSpec := self builder pluggableButtonSpec new.	
	metadataButtonSpec
		model: self;
		frame: (0.65@0 corner: 1@0.05);
		label: #labelTextForCoverView;
		enabled: false.	
		
	headerViews
		add: albumButtonSpec;
		add: metadataButtonSpec.
		
	^ headerViews