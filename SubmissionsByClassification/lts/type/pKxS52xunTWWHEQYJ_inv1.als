sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv1{
	all s:State | s.trans
}

/*
There is a single initial state.
*/

