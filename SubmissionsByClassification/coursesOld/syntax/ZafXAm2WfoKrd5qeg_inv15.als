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
	
	all disj s1, s2 : Student | all p : Project, c : Course |
  		s1 + s2 in projects.p
  		&& s1 + s2 in enrolled.c	
  		&& p in c.projects
  		=> c.grades.p1 = c.grade.p2
  			|| c.grades.p1.prev = c.grade.p2
  			|| c.grades.p1 = c.grade.p2.prev
  		
}


