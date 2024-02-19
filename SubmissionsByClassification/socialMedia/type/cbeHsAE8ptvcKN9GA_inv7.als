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

all u, u2, u3 : User | u3 in u2.follows and u in u2.follows and u3 not in u.follows and u!=u2!=u3 => u3 in u.suggested

}

