accessing
deleteLibrary
	
"	(UIManager default confirm: 'Delete it!' orCancel: 'Oh wait! No!' title: 'Do you really want to delete your music library?')"
	(UIManager default confirm: 'Do you really want to delete your music library?' trueChoice: 'Delete it!' falseChoice: 'Oh wait! No!' )
		ifTrue: [MBSTONHandler deleteLocalSTON] 