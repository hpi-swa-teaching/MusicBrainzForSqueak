as yet unclassified
testMBAlbumSeachFields

	self
		assert: MBRequest MBAlbumSearchFields class
		equals: 	Dictionary 
		description: 'MBAlbumSearchFields should return a dictionary'
	