file handling
importFiles: aFileCollection
	| progressBar  |
	progressBar := ProgressMorph new openInWorld label: 'Processing: Import'.
	aFileCollection do: [ :each |
		self addFile: each.
		progressBar incrDone: (1 / aFileCollection size)
		 ].
	progressBar delete