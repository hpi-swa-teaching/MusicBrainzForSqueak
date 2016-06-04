as yet unclassified
setUp

	super setUp.
	self entity: MBEntity new.
	self entity metadata: (Dictionary newFrom: {#Title->'Testentity'.
		#Artist->'Testartist1/Testartist2'.
		#Label->'Testlabel1/Testlabel2'})