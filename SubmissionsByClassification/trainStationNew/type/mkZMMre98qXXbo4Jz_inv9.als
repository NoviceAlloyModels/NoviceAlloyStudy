sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv9{

all t : Track | all j : Junction | (j not in t.succs) implies (all s : Semaphore | no s in t.signals)
}

