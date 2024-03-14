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

all u1, u2, u3 : User | (u1 -> u2 in follows and u2 -> u3 follows and not (u1 -> u3 in follows)) => u1 -> u3 in suggested
}

