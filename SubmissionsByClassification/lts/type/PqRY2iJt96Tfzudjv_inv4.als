sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv4{
no Init  implies no State and  all i :Init|some e:Event |  e.(i.trans) & State
}

/*
All the states have the same events available.
*/

