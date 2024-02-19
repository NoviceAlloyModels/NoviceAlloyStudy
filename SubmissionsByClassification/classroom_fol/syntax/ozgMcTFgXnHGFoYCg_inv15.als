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

pred inv15{
	all t : Teacher | some t : Teacher | t in p.Tutors || t in p.Tutors.Tutors 
}


