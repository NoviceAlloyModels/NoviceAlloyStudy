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


(all u1,u2 : User | all p : Photo | u1->u2 in follows | u1->p in sees | u2->p in posts | p not in Ad)
(all u3 : User | all p2 : Photo | p2 in Ad implies u3->p2 in sees)

}

