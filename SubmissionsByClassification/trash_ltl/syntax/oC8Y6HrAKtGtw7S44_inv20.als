var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv20{
always f : Trash | f in Trash since f not in Protected
}



