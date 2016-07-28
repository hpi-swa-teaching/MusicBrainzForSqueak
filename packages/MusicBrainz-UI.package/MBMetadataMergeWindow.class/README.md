A MBMetadataMergeWindow is a window in which the user can compare local and MusicBrainz metadata and select which should be accepted.

Instance Variables
	MBMetadata:		OrderedCollection  
	localMetadata:		OrderedCollection 
	metadataToMerge:	OrderedCollection 

MBMetadata
	- OrderedCollection from the MusicBrainz metadata for the selected entity

localMetadata
	- OrderedCollection from the local metadata for the selected entity

metadataToMerge
	- selected metadata that should be adopted into MBMusicBrainzForSqueak
