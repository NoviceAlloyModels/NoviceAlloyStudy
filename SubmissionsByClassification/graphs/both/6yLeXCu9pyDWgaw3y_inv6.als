sig Node {
	adj : set Node
}
pred inv6 {
all x, y : Node | x->y in adj implies y->x not in adj and Node in x.^adj + x
}

pred inv6c {
	all n:Node | Node = n.*(adj+~adj)
}

check correct { inv6 <=> inv6c}
pred under { inv6 and !inv6c}
pred over { !inv6 and inv6c}
run over 
run under 


