building
buildMenuButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0@0 corner: 0.65@0.05);
		label: 'Menu';
		action: #toggleMenuList
