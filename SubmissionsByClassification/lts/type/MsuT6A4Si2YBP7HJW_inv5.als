sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv5{
	all x : State | Event<:(x.trans) in Event
}
/*
Each event is available in at least a state.
*/

