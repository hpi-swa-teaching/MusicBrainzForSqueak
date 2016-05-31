accessing
importedAlbums: anObject
	"If we set anything here, we have to tell mockUpData otherwise testWriteAndRead will override albums.ston with old mockUpData!"
	importedAlbums := anObject