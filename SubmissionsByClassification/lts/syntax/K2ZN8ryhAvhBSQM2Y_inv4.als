sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv4{
	all s : State | s in Init && State in ^(s->Event.(n.trans))
}


/*
All the states have the same events available.
*/

