sig Node {
	adj : set Node
}
pred inv2{
all n1, n2: Node | n1.n2 in Node implies no n1.n2 in Node
}


