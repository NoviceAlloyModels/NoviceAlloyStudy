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
	
  	all w : Work, u : User |  ~(visible.((u.profile)<:ids).(visible.((u.profile)<:ids) in iden
}



