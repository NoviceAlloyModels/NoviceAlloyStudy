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


all x: User, y: Photo |  x -> y in sees implies y in Ad or | some z: User | x -> z in follows and z -> y in posts

}

