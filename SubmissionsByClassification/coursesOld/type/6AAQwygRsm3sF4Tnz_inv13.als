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

pred inv13{
	
	all c1 : Course |
	all g1 : Grade | all s1 : Student | max [ c1->s1->g1 in grades]
  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects) 
}

