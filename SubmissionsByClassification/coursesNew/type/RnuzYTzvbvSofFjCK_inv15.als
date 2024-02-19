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

pred inv15{
	
  	all s1,s2: Student | all p: Project | all c: Course | all g1,g2: Grade |
  	s1->p in projects and s2->p in projects and c->p in projects and c->s1->g1 in grades and c->s2->g2 in grades =>
  	g2 & g1 <=1

}


