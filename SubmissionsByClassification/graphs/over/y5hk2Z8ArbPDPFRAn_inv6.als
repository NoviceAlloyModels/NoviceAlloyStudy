sig Node {
	adj : set Node
}
pred inv6 {
all n : Node | n.adj != n and (some n.adj or some n.~adj)
}

pred inv6c {
	all n:Node | Node = n.*(adj+~adj)
}

check correct { inv6 <=> inv6c}
pred under { inv6 and !inv6c}
pred over { !inv6 and inv6c}
run over 
run under 


