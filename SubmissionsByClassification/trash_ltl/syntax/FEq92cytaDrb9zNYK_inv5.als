var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv5{
some f:File
Trash' = Trash + f
}


