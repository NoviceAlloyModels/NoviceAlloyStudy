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
	
  
  
  all c : Course, s,g : univ | s->g in c.grades and (all x,y : univ | x->y in c.grades implies ordering/gte[g,y]) implies (some p : s.projects | p in c.projects)

}

