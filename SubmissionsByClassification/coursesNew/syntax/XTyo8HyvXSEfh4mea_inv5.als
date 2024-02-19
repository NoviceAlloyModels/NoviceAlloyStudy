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
	
	
  all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)

  
}

