file and directory accessing
findFilesFrom: aDirectory
	| files |
	files := OrderedCollection new.
	aDirectory entries
		do: [:entry | entry isDirectory
				ifFalse: [
						(self isNotFiltered: entry)
						ifTrue: [files add: entry]]].
	^ files