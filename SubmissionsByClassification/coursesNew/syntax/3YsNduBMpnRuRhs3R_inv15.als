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
	
  	all c: Course, p: Project, s1, s2: Student | s1.enrolled = s2.enrolled and s1.projects = s2.projects and p in s1.projects =>abs(s1.grades[c] -s2.grades[c]) <= 1

}


