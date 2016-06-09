file and directory accessing
recursivelyFindFilesFrom: aDirectory
	| files |
	files := OrderedCollection new.
	aDirectory entries
		do: [:entry | entry isDirectory
				ifTrue: [| subDirectoryFiles |
					subDirectoryFiles := self recursivelyFindFilesFrom: (FileDirectory on: entry fullName).
					subDirectoryFiles
						ifNotEmpty: [files addAll: subDirectoryFiles]]
				ifFalse: [
						(self isNotFiltered: entry)
						ifTrue: [files add: entry]]].
	^ files