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

pred inv3 {
all x: User, y: User, p : Photo | y in follows.x and p in posts.y and  x in sees.p and p  not in Ad
}

pred inv3c {
	all p : User | p.sees - Ad in p.follows.posts
}

check correct { inv3 <=> inv3c}
pred under { inv3 and !inv3c}
pred over { !inv3 and inv3c}
run over 
run under 

