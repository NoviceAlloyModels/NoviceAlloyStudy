sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv5{
	Event in State.trans
}

/*
Each event is available in at least a state.
*/

