sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}

pred inv9{
all f1, f2, f3 : File |  f1.link implies no f2.link
}

/* If a link is deleted, so is the file it links to. */

