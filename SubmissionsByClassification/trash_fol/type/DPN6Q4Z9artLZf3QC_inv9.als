sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}

pred inv9{
all f1,f2:File | isLinked[f1] implies f1->f2 not link
}

/* If a link is deleted, so is the file it links to. */

pred isLinked(f:File){
some f2:File | f2->f in link
}

/* There are no links. */

