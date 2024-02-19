sig Workstation {
	workers : set Worker,
	succ : set Workstation
}
one sig begin, end in Workstation {}

sig Worker {}
sig Human, Robot extends Worker {}

abstract sig Product {
	parts : set Product	
}

sig Material extends Product {}

sig Component extends Product {
	workstation : set Workstation
}

sig Dangerous in Product {}
pred inv9{

all w : Workstation | (w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w) or (w in begin and w in end and one Worstation)
}

