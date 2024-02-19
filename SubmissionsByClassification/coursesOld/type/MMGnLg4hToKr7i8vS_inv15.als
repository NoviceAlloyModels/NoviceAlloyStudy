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
	
  	all disj s1, s2 : Student, c : Course | some ((s1.projects & s2.projects) & c.projects) implies (all g1 : s1.(c.grades), g2 : s2.(c.grades) |
  	g1 in (prev[g2] + g1=next[g2] + g2))
}


