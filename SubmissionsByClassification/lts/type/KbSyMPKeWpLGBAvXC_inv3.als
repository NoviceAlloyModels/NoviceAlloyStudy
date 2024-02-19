sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv3{
  all s:State |some e: Event | s.trans implies lone e in trans
}

/*
All states are reachable from an initial state.
*/

