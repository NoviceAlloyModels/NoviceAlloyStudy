var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv11{
after (f:not in Protected | f in Protected')

}


