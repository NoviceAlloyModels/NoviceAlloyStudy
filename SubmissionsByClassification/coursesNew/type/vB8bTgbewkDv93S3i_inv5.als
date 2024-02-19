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
	
	
   all p : Project | (some s : Student | p in s.projects) 
    all p : Person | (p.projects != none) & (all c : p.teaches | c !in p.enrolled)

  
}

