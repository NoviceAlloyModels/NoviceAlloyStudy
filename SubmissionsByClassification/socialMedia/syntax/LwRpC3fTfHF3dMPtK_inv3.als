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


all x:Users | some y:User, p:photo | p in x.sees implies (p in y.posts and y in x.follows) or p in Ad
}

