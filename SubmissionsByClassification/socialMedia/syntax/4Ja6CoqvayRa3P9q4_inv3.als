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


all user, photo : univ | user in User and photo in Photo and user->photo in sees implies (photo in Ad) or
(all followed : univ | followed in User and followed->photo in posts implies user->followed in follows

}

