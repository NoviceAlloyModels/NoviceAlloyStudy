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

all x,x1,x2:User | x1 in x.suggested implies x1 != x and x2 != x1 and x1 in x2.follows and x2 in x2 in x1.follows
}

