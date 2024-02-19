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
	
   all x:Student, y:Student-x, p:Project| x->p in projects and y->p in projects c->x->g in grades implies #y->x->g in grades <= 1

}


