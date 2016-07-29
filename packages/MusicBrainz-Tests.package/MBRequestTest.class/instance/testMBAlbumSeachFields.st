TESTING: dictionary
testMBAlbumSeachFields

	self
		assert: MBRequest mbAlbumSearchFields class
		equals: 	Dictionary 
		description: 'MBAlbumSearchFields should return a dictionary'
	