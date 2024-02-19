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






all u: User | (some u.posts in Ad => all u.posts in Ad) and (no u.posts in Ad => no u.posts in Ad)
}

