var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv8{
all f1,f2 : File | f1->f2 in link implies eventually f2 ib Trash
}


