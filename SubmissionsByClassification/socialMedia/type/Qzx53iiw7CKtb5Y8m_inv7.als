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




all u:User | u not in u.suggested
all i: Influencer, u: User |i not in u.suggested
all i: Influencer| i.suggested = {}
all u: User| u.follows.follows in u.suggested
}

