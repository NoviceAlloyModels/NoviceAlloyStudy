var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv4{

some f:File not in Trash | eventually f in Trash
}


