file and directory accessing
recursivelyFindFilesFrom: aDirectory
	| files |
	files := OrderedCollection new.
	aDirectory entries
		do: [:entry | entry isDirectory
				ifTrue: [files addAll: (self recursivelyFindFilesFrom: (FileDirectory on: entry fullName))]
				ifFalse: [
						(self isNotFiltered: entry)
						ifTrue: [files add: entry]]].
	^ files