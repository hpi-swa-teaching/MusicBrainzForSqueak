as yet unclassified
showFileNamesFor: aDirectory

	^ aDirectory entries
		select: [:entry | entry isDirectory]
		thenCollect: [:entry | entry asFileDirectory]
	