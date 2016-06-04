file and directory accessing
showSubFolderNamesFor: aDirectory 
	^ aDirectory entries
		select: [ :entry | [entry asFileDirectory entries. true]
				on: Error
				do: [false]]
		thenCollect: [:entry | entry asFileDirectory]