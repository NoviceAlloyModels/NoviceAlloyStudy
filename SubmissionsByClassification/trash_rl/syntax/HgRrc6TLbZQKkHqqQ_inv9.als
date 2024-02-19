sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}

pred inv9{
all f1 : File | no link^.f1 & f1.link
}

/* If a link is deleted, so is the file it links to. */

