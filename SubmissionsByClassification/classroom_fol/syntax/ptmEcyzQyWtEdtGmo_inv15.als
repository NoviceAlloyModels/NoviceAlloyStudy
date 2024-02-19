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
  all p1,p2:Person | (p1->p2 in Tutors and p2 in Teachers) or (some p3: Person | p1 != p3 and p2 != p3 and p2->p3 and p3 -> Teachers)
}


