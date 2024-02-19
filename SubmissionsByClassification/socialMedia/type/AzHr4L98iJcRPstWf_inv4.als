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

pred inv4{

all p : Photo | all u : User | all ad : Ad |
(some ad in u.posts) implies (p in u.posts implies p in Ad)
}

