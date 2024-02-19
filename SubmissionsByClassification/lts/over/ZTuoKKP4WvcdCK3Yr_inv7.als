sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv7 {
let t = {x: State, y: State | some (x.trans).y } |
  	all i: Init | all s: i.*t | i in s.*t
}

pred inv7c {
	let ts = {s1,s2:State | some e:Event | s1->e->s2 in trans} | all s:Init.^ts | some i:Init | i in s.^ts
}

check correct { inv7 <=> inv7c}
pred under { inv7 and !inv7c}
pred over { !inv7 and inv7c}
run over 
run under 

