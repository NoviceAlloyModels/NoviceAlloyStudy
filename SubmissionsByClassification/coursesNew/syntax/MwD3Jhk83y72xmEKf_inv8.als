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

pred inv8{
	
	r, c1,c2:Course| p1->c1 in teaches and p2->c2 in enrolled and p1 != p2 implies c1 != c2
}

