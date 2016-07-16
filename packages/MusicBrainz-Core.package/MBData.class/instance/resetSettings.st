settings
resetSettings
	(UIManager default 
	confirm: 'Do you really want to reset all settings? This can not be undone and is automatically saved!' 
	trueChoice: 'Trust me, I''m an engineer. Do it! Now!' 
	falseChoice: 'Wait, do you really mean all settings? Stop it!' )
		ifFalse: [^ nil].
	MBRequest 
		baseURL: nil;
		username: nil;
		password: nil.
	self settings: nil