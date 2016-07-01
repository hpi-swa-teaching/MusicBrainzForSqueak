building
buildLabelMetadataList 
	| metadataSpec |
	metadataSpec := self builder pluggableListSpec new.
	^ metadataSpec 
		model: self;
		list: #getMetadataLabels;
		frame: (0@0.05 corner: 0.3@0.9)
		