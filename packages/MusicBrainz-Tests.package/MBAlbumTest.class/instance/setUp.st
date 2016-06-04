as yet unclassified
setUp

	super setUp.
	self album: MBAlbum new.
	self album setMBID: 'c6442992-75a6-4e43-9c40-d34d0ffd1456'.
	self album metadata: (Dictionary newFrom: {#Artist->'Testartist1/Testartist2'.
		#Label->'Testlabel1/Testlabel2'.
		#Media->'Testmedium1/Testmedium2'.
		#Title->'Testalbum'.
		#Year->'1970'})