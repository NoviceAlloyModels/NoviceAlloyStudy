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
	
    
  	all c1,c2 : Course | all p : Person | all g1,g2 : Grade | 
  ((p->g1 in c1.grades) and p->g2 in c2.grades)) implies c1!=c2
}

