sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv4{
  							
    all  s: State-Init |some e:Event |  some (trans.^(e->s) &Init)
  
  
  
}

/*
All the states have the same events available.
*/

