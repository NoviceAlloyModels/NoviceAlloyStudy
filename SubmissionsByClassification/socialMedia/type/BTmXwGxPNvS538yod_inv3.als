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


all u1,u2:User|all p1,p2:Photo|((p1 not in Ad) implies (((u1->u2 in follows) and (u2->p1 in posts)) implies (u1->p1 in sees))) and (all u:User|p2 in Ad implies u->p2)


}

