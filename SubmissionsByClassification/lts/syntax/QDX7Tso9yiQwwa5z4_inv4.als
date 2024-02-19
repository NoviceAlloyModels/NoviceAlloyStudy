sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv4{
	  for s: State | some e: Event | (Init.trans).^(Event->State)
}

/*
All the states have the same events available.
*/

