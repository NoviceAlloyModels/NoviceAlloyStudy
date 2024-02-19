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

pred inv13{
	all p1:Person | (isTutored [p1] implies p1 in Student and isTutor [p2] implies p2 in Teacher
}

pred isTutored (p1:Person){
	some p2:Person | p2->p1 in Tutors
}

