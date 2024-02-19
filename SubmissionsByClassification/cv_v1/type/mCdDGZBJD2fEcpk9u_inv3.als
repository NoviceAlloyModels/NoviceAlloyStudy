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

pred inv3{
  
  all w1, w2:Work, u:User, i:Id | ((w1 in u.profile and w2 in u.profile) and (w1.source = w2.source)) implies (w1.i != w2.i)
}


