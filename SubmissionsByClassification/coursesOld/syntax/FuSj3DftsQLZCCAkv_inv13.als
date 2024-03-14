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
	
	all s:Student, c:Course | s->c in enrolled and s in c.grades.last in implies (some p : Project | p in c.projects and p in s.projects)
}

