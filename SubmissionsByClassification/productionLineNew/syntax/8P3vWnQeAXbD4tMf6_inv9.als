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

(all w,wb:Workstation | (wb in begin and wb!=w) implies w in wb.^(succ))
and
(all w:Workstion | w not in w.^(succs))
and
(all w:Worsktation | w not in end implies one w.succ)
}

