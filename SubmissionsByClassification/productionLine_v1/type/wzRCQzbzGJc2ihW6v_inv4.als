open util/ordering[Position]

sig Position {}

sig Product {}

sig Component extends Product {
    parts : set Product,
    position : one Position
}
sig Resource extends Product {}

sig Robot {
        position : one Position
}
pred inv4{
    all c: Component | let parts = p.parts | gt[parts.Position, c.position]
}



