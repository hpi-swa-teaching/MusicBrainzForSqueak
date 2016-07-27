building
buildMenuButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0@0 corner: 0.2@0.05);
		label: self class labelForMenuButton;
		action: #toggleMenuList
