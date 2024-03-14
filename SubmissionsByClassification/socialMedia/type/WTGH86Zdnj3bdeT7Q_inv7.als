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



all u: User - Influencer| u.suggested in u.follows.follows => u.suggested not in u.follows
all u:User | u not in u-suggested
all i: Influencer| no i.suggested
}

