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

pred inv8{

all u : User, ad : Ad | ad in u.sees = (u.follows.pots + (u.follows.follows - (u.follows + u)) )
}


