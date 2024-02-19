sig Node {
	adj : set Node
}
pred inv1 {
all disj n, m: Node | n.adj in m implies m.adj in n
}

pred inv1c {
	adj = ~adj
}

check correct { inv1 <=> inv1c}
pred under { inv1 and !inv1c}
pred over { !inv1 and inv1c}
run over 
run under 


