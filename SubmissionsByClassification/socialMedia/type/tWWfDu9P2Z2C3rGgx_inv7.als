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

all z: User | all x: z.suggested | some y: User-z | y in z.follows && x in y.follows && x!=y & x!=z

}

