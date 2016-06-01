as yet unclassified
getYear

	^ self year ifNil:
		[
			| request |
			request := MBRequest getDetailsForA: (self class entityName) withMBID: (self mbid).
			[self year: ((request firstTagNamed: #date) contentString copyFrom: 1 to: 4).]
				on: MessageNotUnderstood
				do: [self year: ''].
			self year]