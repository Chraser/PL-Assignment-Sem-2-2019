#!/usr/bin/env gst

1 to: 100 do: [:count|
	(count \\ 15 == 0) 
	ifFalse: [
		(count \\ 3 == 0) 
		ifTrue: [ 'Fizz' printNl. ] 
		ifFalse: [
			(count \\ 5 == 0) 
			ifTrue: [ 'Buzz' printNl. ] 
			ifFalse: [ count printNl. 
			]
		]
	]
	ifTrue: [ 'FizzBuzz' printNl. ] 
	
]