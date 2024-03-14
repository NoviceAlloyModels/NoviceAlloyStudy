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
	all s : State | some s.trans
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
	all s : State, e : Event | lone e.(s.trans)
}

/*
All states are reachable from an initial state.
*/
fun onlyStates : set State -> State {
  	{ s1,s2: State | some e: Event | s1->e->s2 in trans } 
  
}
pred inv4 {
  		all s: State | s in Init.^onlyStates
}

/*
All the states have the same events available.
*/
fun getEventsOfState[s1: State] : Event {
  	{ e: Event | some s2: State | s1->e->s2 in trans }
}

pred inv5 {
	all s1, s2: State | getEventsOfState[s1] = getEventsOfState[s2]
}

/*
Each event is available in at least a state.
*/
pred inv6 {
	all e: Event | some s: State | e in getEventsOfState[s]
}

/*
The LTS is reversible, ie, from a reacheable state it is always possible 
to return to an initial state.
*/

pred isReachableFromState[s: State, i: State] {
  	s in i.*onlyStates
}

pred inv7 {
	all s : State | some i1,i2: Init | s.isReachableFromState[i1] implies i2.isReachableFromState[s]
}
