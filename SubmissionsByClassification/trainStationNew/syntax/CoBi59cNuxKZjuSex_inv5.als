sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv5{

all t : Track | t in Entry iff some disj t1, t2 | Track | (t1 + t2) in t.succs
}

