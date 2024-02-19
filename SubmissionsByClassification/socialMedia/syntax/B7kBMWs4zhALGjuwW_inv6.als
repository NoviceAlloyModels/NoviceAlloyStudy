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

pred inv6{

all p1:Photo, p2:Photo, d1:Day, d2:Day, i:Influencer | p1 in i.posts and p2 in i.posts and d1 in p1.date and d2 in p2.data implies d1!=d2
}

