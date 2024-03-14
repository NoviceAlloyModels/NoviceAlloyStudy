/*
A labeled transition system (LTS) is comprised by States, a sub-set
of which are Initial, connected by transitions, here represented by 
Events.
*/
sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

/*
The LTS does not contain deadlocks, ie, each state has at least a 
transition.
*/
pred inv1 {
	all s:State | some s.trans:>State
}

/*
There is a single initial state.
*/
pred inv2 {
	one Init
}

/*
The LTS is deterministic, ie, each state has at most a transition for each event.
*/
pred inv3 {
	all s:State, e:Event | lone e <: s.trans
}

/*
All states are reachable from an initial state.
*/
pred inv4 {

}

/*
All the states have the same events available.
*/ 
pred inv5 {
	all disj s1,s2 :State |  no ((s1.trans).State) -((s2.trans).State) and no ((s2.trans).State) - ((s1.trans).State)
}


pred inv6 {
	all e:Event | some e.(State.trans)
}

/*
The LTS is reversible, ie, from a reacheable state it is always possible 
to return to an initial state.
*/
pred inv7 {

}
