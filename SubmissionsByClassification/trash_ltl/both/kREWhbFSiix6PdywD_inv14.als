var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv14 {
Protected in Trash implies Protected' not in Trash
}

pred inv14c {
	always (all f:Trash&Protected | f not in Protected')
}

check correct { inv14 <=> inv14c}
pred under { inv14 and !inv14c}
pred over { !inv14 and inv14c}
run over 
run under 


