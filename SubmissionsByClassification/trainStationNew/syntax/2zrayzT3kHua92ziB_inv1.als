sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv1{

(all x : Exit | all y : Track | x->y not in succs) and
(all x : Entry | all y : Track | y->x not in succs) and
(all x : Junction | some y,z : Track | y->x in succs and x->z in succs) and
(some x : Track | some y : Track | (y->x in succs and y in Entry) implies (some z : Track | z in Exit and x->z in succs))
}
}

