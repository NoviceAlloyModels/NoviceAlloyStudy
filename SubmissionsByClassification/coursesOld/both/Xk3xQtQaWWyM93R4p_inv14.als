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
all s:Student, p:Project | p in s.projects and some s2:Student-s | p in s2.projects implies all ps:Project | ps in s.projects implies ps not in s2.projects
}

pred inv14c {
	all p : Person, disj x,y : p.projects | no ((Person <: projects).x & projects.y) - p
}

check correct { inv14 <=> inv14c}
pred under { inv14 and !inv14c}
pred over { !inv14 and inv14c}
run over 
run under 

