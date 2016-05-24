as yet unclassified
testTracks

	| tracks compareListWithMBIDs i |
	
	tracks := self album getTracks.
	compareListWithMBIDs := #('ff827e98-6c22-4078-b5fd-40b92087d6c0' '9f2a724b-efe9-4e1e-8aea-3d14367edd1c' 'b08a2ddd-004d-4eea-86be-6ba5334e0f51' '2cc9e1cc-7b4a-4400-91ac-e9175daf8ebe' '0bb7e019-5cf5-48df-aff6-686f8d1b86d5' '46c969fb-79e0-4f84-9d42-bc674beb665a' '96c463f8-a1d3-4ac7-b233-39f02282e31b' '803ff72d-66ea-482f-ba5b-c0050da6ada8' 'f84fc954-e992-4bdb-9db5-d85b2e79ef2c' '8d37417f-4867-4f66-811b-9f9d0d22b6e8' '1dcfc6c5-3830-4724-88f5-f1171dbf96de' 'ff827e98-6c22-4078-b5fd-40b92087d6c0' '9f2a724b-efe9-4e1e-8aea-3d14367edd1c' 'b08a2ddd-004d-4eea-86be-6ba5334e0f51' '2cc9e1cc-7b4a-4400-91ac-e9175daf8ebe' '0bb7e019-5cf5-48df-aff6-686f8d1b86d5' '46c969fb-79e0-4f84-9d42-bc674beb665a' '96c463f8-a1d3-4ac7-b233-39f02282e31b' '803ff72d-66ea-482f-ba5b-c0050da6ada8' 'f84fc954-e992-4bdb-9db5-d85b2e79ef2c' '8d37417f-4867-4f66-811b-9f9d0d22b6e8' '1dcfc6c5-3830-4724-88f5-f1171dbf96de' '8b65ee7f-f102-4be4-83a4-ef3ef9fd2724' '402f9f37-af6c-434b-a1d1-699c6e6cb55e' '9cf41df1-ff5c-4384-8279-849184ce2795' '232f1d8b-f303-464c-aca6-ebfd6922081c' '99ea06ef-6f21-496d-b42b-8a38ed7fa8af' '374b12db-a5ec-453b-8c45-de3d060d7dd3').
	self
		assert: tracks size 
		equals: compareListWithMBIDs size
		description: 'Amount of tracks of album does not match'.
	i := 0.
	tracks do: [:each |
		i := i + 1.
		self
			assert: 	each mbid
			equals: (compareListWithMBIDs at: i)
			description: 'The tracks of album do not match']