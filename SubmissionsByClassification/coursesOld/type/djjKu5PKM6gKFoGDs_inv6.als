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

pred inv6{
	
	all s : Student, p : Project | p in s.(Person<:projects) iff p in s.enrolled.Project 
  
}

