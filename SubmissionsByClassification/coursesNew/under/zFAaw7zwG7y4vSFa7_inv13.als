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

pred inv13 {
all s: Student | all c:Course| s = c.grades.last => (some p: Project | s in projects.p and c in projects.p)
}

pred inv13c {
	all c : Course, p : Person | last in p.(c.grades) implies some p.projects & c.projects
}

check correct { inv13 <=> inv13c}
pred under { inv13 and !inv13c}
pred over { !inv13 and inv13c}
run over 
run under 

