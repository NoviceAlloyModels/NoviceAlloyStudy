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

all u1:User, u2:u1.follows | (some u3:u2.follows | not u1->u3 in follows) =>  u1->u3 in suggested
}

