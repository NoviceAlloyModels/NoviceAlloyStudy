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
	
  
  	all c: Course, s1: Student, s2: Student - s1 | ((s1.enrolled in c) and (s2.enrolled in c) and lone (s1.projects & s2.projects)) implies (c.grades.s1 in (prev[grades.s2] + next[grades.s2] + grades.s2))
}


