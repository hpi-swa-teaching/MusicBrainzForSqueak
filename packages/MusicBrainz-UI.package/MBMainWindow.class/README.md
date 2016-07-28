A MBMainWindow is the main window of MusicBrainzForSqueak,toggles other windows and shows the internal data.

Instance Variables
	coverView:		ImageMorph
	data:		MBData
	importWindow:		MBFileSelectionWindow 
	metadataWindow:		MBMetadataWindow
	player:		MBMP3Player
	selectedEntity:		MBAlbum/MBTrack
	selectedMetadata:	String

coverView
	- ImageMorph that holds the cover image of the selected entity

data
	- reference to the MBData class

importWindow
	- reference to FileSelectionWindow for double dispatch

metadataWindow
	- reference to FileMetadataWindow for double dispatch

player
	- controling playing/pausing and resuming of the music

selectedEntity
	- which track/album is selected in the tree view

selectedMetadata
	- which metadata is selected in the metadata view (bottom right)
