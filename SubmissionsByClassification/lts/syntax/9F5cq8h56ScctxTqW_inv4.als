sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv4{
  all x : Init | State in lone Event.*(x.trans) 
}

/*
All the states have the same events available.
*/

