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
	
	all s1,s2 : Student | all g1,g2 : Grade | all c : Course | s1->_ in c.grades and s2->g2 in c.grades implies s1 != s2
}

