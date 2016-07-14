file and directory accessing
findFilesFrom: aDirectory
	| files |
	files := OrderedCollection new.
	aDirectory entries
		do: [:entry | entry isDirectory
				ifFalse: [
						(self isSupported: entry)
						ifTrue: [files add: entry]]].
	^ files