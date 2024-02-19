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

pred inv12{
	
	all s1, s2 : Student, c : Course , g: Grade | s1->g in c.grades and s2->g in c.grades implies c1!=c2
}

