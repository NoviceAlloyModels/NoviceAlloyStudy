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

all x : User | (((not no x.suggested)) implies (x.suggested in x.follows.follows or x in x.suggested)))
}

