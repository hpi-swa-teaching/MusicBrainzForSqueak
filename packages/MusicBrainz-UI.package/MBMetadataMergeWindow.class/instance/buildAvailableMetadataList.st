as yet unclassified
buildAvailableMetadataList 
	| metadataSpec |
	metadataSpec := self builder pluggableListSpec new.
	^ metadataSpec 
		model: self;
"		list: #getMetadata;
		getSelected: #selectedMetadata;
		setSelected: #selectedMetadata:;"
		frame: (0@0.1 corner: 0.5@1)
		