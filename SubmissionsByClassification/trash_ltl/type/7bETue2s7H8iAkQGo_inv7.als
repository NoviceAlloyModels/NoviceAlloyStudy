var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv7{
some File in Protected
}


