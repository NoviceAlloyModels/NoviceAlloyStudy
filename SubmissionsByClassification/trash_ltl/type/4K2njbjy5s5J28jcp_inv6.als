var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv6{
some File in Trash since File in Trash
}


