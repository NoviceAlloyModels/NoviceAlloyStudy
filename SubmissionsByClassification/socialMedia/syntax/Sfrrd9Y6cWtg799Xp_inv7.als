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


all u : User, sugg in u.suggested | u not in sugg && all uf : u.follows | uf not in sugg and sugg in u.follows.follows

}

