sig Person  {
	Tutors : set Person,
	Teaches : set Class
}
sig Group {}

sig Class  {
	Groups : Person -> Group
}

sig Teacher in Person  {}

sig Student in Person  {}

pred inv8{
 all t:Teacher, c1,c2:Class | t->c1 in Teaches and t->c2 in Teaches implies t1=t2
}

