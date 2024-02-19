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
	
	all p1,p2 : Project | all s1,s2 : Students | p1 in s1.projects and p1 in s2.projects implies p2 not in s1.projects or p2 not in s2.projects
}

