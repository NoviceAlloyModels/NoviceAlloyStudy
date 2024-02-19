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

pred inv6{
	
  	all s1 : Student | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (s1->p1 in projects and s1->c1 in Course) 

}

