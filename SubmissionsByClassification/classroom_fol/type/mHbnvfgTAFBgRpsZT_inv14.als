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
	all c:Class,s:Student,t:Teacher | s.(c.Groups) and t.(c.Groups) implies t in c.^~Tutors
}

