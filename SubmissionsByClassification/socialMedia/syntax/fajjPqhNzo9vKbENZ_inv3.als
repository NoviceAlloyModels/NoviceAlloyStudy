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


all u:User | p:Photo-Ad | p in u.sees implies p in u.follows.posts     all a:Ad | all u:User | a in u.sees
}

