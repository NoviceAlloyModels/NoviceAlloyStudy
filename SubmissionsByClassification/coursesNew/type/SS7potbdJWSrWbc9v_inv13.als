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
	
	all s : Student |
  		all c : s.enrolled |
  			max[Student.(c.grades)] = (s -> s.(c.grades)) implies some s.projects & c.projects
}

