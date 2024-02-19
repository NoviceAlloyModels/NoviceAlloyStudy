abstract sig Source {}
sig User extends Source {
    profile : set Work,
    visible : set Work
}
sig Institution extends Source {}

sig Id {}
sig Work {
    ids : some Id,
    source : one Source
}

pred inv4{
	always (all u : User, disj v1, v2 : u.visible | (no (v1.ids & v2.ids)) | all v : (u.profile - v1 - v2) | (no (v1.ids & v.ids)) and (no (v2.ids & v.ids)))
}



