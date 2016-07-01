building
buildHeaderViews
	| headerViews labelButtonSpec localButtonSpec MBButtonSpec |
	headerViews := OrderedCollection new.

	labelButtonSpec := self builder pluggableButtonSpec new.
	labelButtonSpec 
		model: self;
		frame: (0@0 corner: 0.3@0.05);
		label: 'Metadata:';
		enabled: false.
	
	localButtonSpec := self builder pluggableButtonSpec new.	
	localButtonSpec
		model: self;
		frame: (0.3@0 corner: 0.65@0.05);
		label: 'Local data:';
		enabled: false.	
		
	MBButtonSpec := self builder pluggableButtonSpec new.	
	MBButtonSpec
		model: self;
		frame: (0.65@0 corner: 1@0.05);
		label: 'MB data:';
		enabled: false.	

	headerViews
		add: labelButtonSpec;
		add: localButtonSpec;
		add: MBButtonSpec.
		
	^ headerViews