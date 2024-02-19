sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv4{
	all s:State | (s.trans).^Event = State
}

/*
All the states have the same events available.
*/

