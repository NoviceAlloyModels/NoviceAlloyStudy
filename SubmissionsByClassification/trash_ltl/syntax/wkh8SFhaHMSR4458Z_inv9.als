var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv9{
always (all f:Protected | f not in Trash) )
}


