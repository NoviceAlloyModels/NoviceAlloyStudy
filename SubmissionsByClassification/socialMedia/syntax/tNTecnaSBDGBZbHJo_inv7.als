sig User {
	follows : set User,
	sees : set Photo,
	posts : set Photo,
	suggested : set User
}

sig Influencer extends User {}

sig Photo {
	date : one Day
}
sig Ad extends Photo {}

sig Day {}

pred inv7{

all x,z : User |y->z in suggested implies
(some y :User | x->y in follows and y->z in follows and x->z not in follows and x!=z)
}

