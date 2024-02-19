open util/ordering[Grade]

sig Person {
	teaches : set Course,
	enrolled : set Course,
	projects : set Project
}

sig Professor,Student in Person {}

sig Course {
	projects : set Project,
	grades : Person -> Grade
}

sig Project {}

sig Grade {}

pred inv8{
	
	all p1, p2: Professor, c : Course | (p1 ->x in enrolled and p2 -> c in teaches) => (p1 != p2)
	
}

