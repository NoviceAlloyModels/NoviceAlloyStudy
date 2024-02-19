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

pred inv5{
	
	
	(all p: Project, p1: Person | p in p1.project implies p1 in Student) and (all p2: Project | some p3: Student | p2 in p3.project)
}

