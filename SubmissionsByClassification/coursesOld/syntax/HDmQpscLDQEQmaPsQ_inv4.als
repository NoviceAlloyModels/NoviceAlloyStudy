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

pred inv4{
	
  
    all p:Project | p in Course.projects
  	all p1,p2:Project | p1 in Course.Projects and p2 in Course.Projects implies p1!=p2
}

