var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv12{
eventually some f:File | ((f not in Trash)+(f in Trash')) implies always f in Trash'

}


