sig Node {
	adj : set Node
}
pred inv1 {
all disj n,n1 : Node | n in n1.adj.~adj
}

pred inv1c {
	adj = ~adj
}

check correct { inv1 <=> inv1c}
pred under { inv1 and !inv1c}
pred over { !inv1 and inv1c}
run over 
run under 


