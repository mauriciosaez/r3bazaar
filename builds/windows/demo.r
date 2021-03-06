Rebol [
	title: "R3 GUI demo"
	date: 5-Apr-2013/17:26:38+2:00
	version:  2.0.2  ;it doesn't has much sense since the correct verion number is on GitHub site
	license: "Apache License, Version 2.0, January 2004, http://www.apache.org/licenses/"
	]

my-data: [
        ["John" "Doe" NY 45]
        ["Erica" "Stone" CA 19 none "note 1"]
        ["James" "Cole" FL 5 "note 2"]
]



view  [
	hpanel [	
		vpanel [
			title "R3GUI demonstration"
			button "button" on-action [alert "button pressed"]			
			button "text-table" on-action [view [title "Text-table example" text-table 200x200  ["First name" #1 250 "Surname" #2 300 "Age" #4 50 number] my-data] ]
			toggle  "toggle"
			check
			radio
			radio
			text "arrow-button:"
			hpanel [
				arrow-button 
				arrow-button  45
				arrow-button  90
				arrow-button  135
				arrow-button  180
				]
			text "drop-down:"	
			drop-down	["first" "second" "3" "and so on..."]
			hpanel [
				drop-arrow ["first" "second" "3" "and so on..."]
				text "<- drop-arrow"
				]
			text "box:"
			box
			text "bar:"
			bar
			]
		div
		vpanel [
			text "<- div "
			text "progress:"
			pp: progress  10%
			text  "slider:"
			ss: slider 10% attach 'pp
			head-bar "head-bar text"
			label "Label text"
			text-area "Text-area, you may write here"
			text-box "Text-box, you may write here"
			field "Field, you may write here"
			info "Info"
			
			]
		div
		vpanel  [			
			code "code style" 400x50
			area "area, you may write here" 400x50
			text "code-area"
			code-area (if exists? %demo.r [to-string read %demo.r ]) 400x50
			info-area "info-area" 400x50
			text "color-picker:"
			color-picker
			]		
		]
]

