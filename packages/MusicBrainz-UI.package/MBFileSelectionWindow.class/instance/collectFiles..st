as yet unclassified
collectFiles: aDirectory
	| files |
	files := OrderedCollection new.
	aDirectory entries do: [:entry | 
		entry isDirectory 
			ifTrue: [| subDirectoryFiles | 
				subDirectoryFiles := self collectFiles: (FileDirectory on: (entry fullName)). 
				subDirectoryFiles ifNotEmpty: 
					[files addAll: subDirectoryFiles]
				]
			ifFalse: 
				[entry extension = 'mp3'
					ifTrue: 
						[files add: entry]
				]
			].
		
	^ files