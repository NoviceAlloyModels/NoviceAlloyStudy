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
	
	all s: Student | all c: Course | (s.courses.grades[s] in Grade) => (s.courses.grades[s].cardinality() <= 1)
}

