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

pred inv9 {
all x,y: Teacher, z: Class | x->z in Teaches and y->z in Teaches implies x=y
}

pred inv9c {
  all c:Class | lone Teacher&Teaches.c
}


check correct { inv9 <=> inv9c}
pred under { inv9 and !inv9c}
pred over { !inv9 and inv9c}
run over 
run under 

