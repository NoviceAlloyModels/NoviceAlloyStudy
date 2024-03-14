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

pred inv3{


all u1: User, u2: User, p: Photo | p in u1.sees and p not in Ad and p in u2.posts implies u2 in u1.follows
all p: Photo | p in Ad implies p in sees
}

