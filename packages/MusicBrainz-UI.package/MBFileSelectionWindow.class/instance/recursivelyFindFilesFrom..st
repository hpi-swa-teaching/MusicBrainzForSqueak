file and directory accessing
recursivelyFindFilesFrom: aDirectory
	| files |
	files := OrderedCollection new.
	aDirectory entries
		do: [:entry | entry isDirectory
				ifTrue: [files addAll: (self recursivelyFindFilesFrom: (FileDirectory on: entry fullName))]
				ifFalse: [
						(self isSupported: entry)
						ifTrue: [files add: entry]]].
	^ files