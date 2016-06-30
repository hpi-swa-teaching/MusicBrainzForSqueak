accessing
getURLsinCache
	| urls |
	urls := OrderedCollection new.
	MBRequestCache xMLCache keysDo: [:each | urls add: each].
	^ urls