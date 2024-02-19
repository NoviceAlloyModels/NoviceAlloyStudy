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

pred inv1{

all u:User,u2:User | p:Photo| p in u.posts and u != u2 implies p not in u2.posts

}

