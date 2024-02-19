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



all x,y: User, z:Photo-Ad | x-> z in sees and implies (some y: User| x-> y in follows and y->z in posts)


}

