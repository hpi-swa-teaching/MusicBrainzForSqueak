as yet unclassified
getTitle

	^ self title ifNil:
		[
			| request |
			request := MBrequest new getDetailsForA: (self class entityName) withMBID: (self mbid).
			self
				title: (request firstTagNamed: #title) contentString;
				title]