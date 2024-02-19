sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv9{

all t:Track, s:Semaphore | t in Junction not in Track.^(succs) => s not in Track.signals
}

