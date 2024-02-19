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
	
	all s1, s2: Student, p: Project, c: Course, g1, g2: Grade | s1 != s2 and p in s1.projects and p in s2.projects and p in c.projects and g1 in s1.enrolled.c.grades and g2 in s2.enrolled.c.grades => g1 = prev[g2] or g1 = prev[g2] or g1 = g2
  									            
}


