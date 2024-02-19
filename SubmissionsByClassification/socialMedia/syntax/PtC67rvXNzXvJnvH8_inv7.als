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

all u : User | u not in u.follows + u.suggested
all x : User | all u : x.suggested | u in x.follows.follows and u not in x.follows + x
all x : User | all u : x.follows.follows - u - x.follows | u in x.suggested
}

