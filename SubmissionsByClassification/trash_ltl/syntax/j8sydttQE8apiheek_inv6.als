var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv6{
always (f:File&Trash | f in Trash)
}


