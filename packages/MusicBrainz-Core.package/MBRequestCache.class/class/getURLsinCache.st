accessing
getURLsinCache
	| urls |
	urls := OrderedCollection new.
	self xMLCache keysDo: [:each | urls add: each].
	^ urls