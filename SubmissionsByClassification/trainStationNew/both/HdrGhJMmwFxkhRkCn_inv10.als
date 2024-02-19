sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv10 {
all t: Track| all t1: Junction | (t1 in t.succs and t1 not in Exit) => Semaphore in t.signals
}

pred inv10c {
	all j : Junction, t : succs.j | some t.signals & Semaphore
}

check correct { inv10 <=> inv10c}
pred under { inv10 and !inv10c}
pred over { !inv10 and inv10c}
run over 
run under 

