sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv10 {
all x: Track | some y: x.signals | Junction in x.^succs implies y in Semaphore
}

pred inv10c {
	all j : Junction, t : succs.j | some t.signals & Semaphore
}

check correct { inv10 <=> inv10c}
pred under { inv10 and !inv10c}
pred over { !inv10 and inv10c}
run over 
run under 

