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

all u1: User, u2: User, u3 : User | u2 != u1 != u3 and u2 in u1.suggested and u2 in u3.follows implies u3 in u1.follows and u2 not in u1.follows
}

