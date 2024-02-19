sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}

pred inv8{
all f:File | no isLink[f]
}

/* A link does not link to another link. */

pred isLink[f:File]{
some g:File | g->f in link
}


/* There is no deleted link. */

