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

all x0,x1:User | x1 in x0.suggested implies some x3:User x1 not in x0.follows and x0!=x1 and x1 in x3.follows
}

