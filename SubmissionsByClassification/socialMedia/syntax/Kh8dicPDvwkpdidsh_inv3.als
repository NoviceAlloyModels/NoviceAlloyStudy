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

all p : Photos-Ad | all u : User | u->p in sees implies some v : User | v->p in posts && u->v in follows

}

