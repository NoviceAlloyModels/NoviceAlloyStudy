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

pred inv14{
	
  
  all x,y:Person, p:Project, i:Project-p| x-> p in projects and y-> p in projects implies x-> i in project and y -> i not in projects
 
}

