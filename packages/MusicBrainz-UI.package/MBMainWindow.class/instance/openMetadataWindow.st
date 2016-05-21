as yet unclassified
openMetadataWindow
	| metadataWindow |
	(self selectedEntity = nil)
	ifFalse: 
		[metadataWindow := MBMetadataWindow new.
		metadataWindow selectedEntity: (self selectedEntity).
		ToolBuilder default open: metadataWindow]
	
	