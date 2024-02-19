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

pred inv12{
	all t:Teacher | some c:Class, g:Group, p:Person | t->c in Teaches => c->p->g 
}

