var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv17 {
always File & Trash not in File' & Trash'
}

pred inv17c {
	always (no Trash&File')
}

check correct { inv17 <=> inv17c}
pred under { inv17 and !inv17c}
pred over { !inv17 and inv17c}
run over 
run under 


