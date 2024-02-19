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
	all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some (tTeaches).c implies some (t.Tutors).s
}

