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

all u1,u2 : User | u1 in u2.follows.follows and u1 not in u2.follows and u1!=u3 => u1 in u2.suggested

}

