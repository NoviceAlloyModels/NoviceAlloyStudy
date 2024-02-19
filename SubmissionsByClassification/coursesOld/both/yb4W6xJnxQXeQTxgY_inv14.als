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

pred inv14 {
all s1:Student,s2:Student | some p1:Project | s1->p1 in projects and s2->p1 in projects implies all p2:Project | s1->p2 in projects implies s2->p2 not in projects
  	all s1:Student,s2:Student | some p1:Project | s1->p1 in projects and s2->p1 in projects implies all p2:Project | s2->p2 in projects implies s1->p2 not in projects
}

pred inv14c {
	all p : Person, disj x,y : p.projects | no ((Person <: projects).x & projects.y) - p
}

check correct { inv14 <=> inv14c}
pred under { inv14 and !inv14c}
pred over { !inv14 and inv14c}
run over 
run under 

