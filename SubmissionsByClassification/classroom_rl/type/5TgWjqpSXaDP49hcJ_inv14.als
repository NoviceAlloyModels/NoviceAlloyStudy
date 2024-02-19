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

pred inv14{
	all s:Person,c:Class | (some s<:c.Groups) implies no((Teaches & Teaches.c) - (Tutors.s))
}

