sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv4{
	all s1 : State |  (Init->Event) in trans
}

/*
All the states have the same events available.
*/

