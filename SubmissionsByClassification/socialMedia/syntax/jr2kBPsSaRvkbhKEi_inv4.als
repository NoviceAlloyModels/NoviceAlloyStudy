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


all p1,p2 : Photo | all ad : Ad  | all x : User | p1 = ad and p1 in x.posts and p2 in x.posts implies p2 = ad
all
}

