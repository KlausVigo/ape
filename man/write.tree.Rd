\name{write.tree}
\alias{write.tree}
\title{Write Tree File in Parenthetic Format}
\usage{
write.tree(phy, file = "", append = FALSE,
           digits = 10, tree.names = FALSE)
}
\arguments{
  \item{phy}{an object of class \code{"phylo"} or \code{"multiPhylo"}.}
  \item{file}{a file name specified by either a variable of mode character,
    or a double-quoted string; if \code{file = ""} (the default) then the
    tree is written on the standard output connection (i.e. the console).}
  \item{append}{a logical, if \code{TRUE} the tree is appended to the file
    without erasing the data possibly existing in the file, otherwise
    the file (if it exists) is overwritten (\code{FALSE} the default).}
  \item{digits}{a numeric giving the number of (significant) digits used
    for printing branch lengths (see details). For negative numbers no
    branch lengths are printed.}
  \item{tree.names}{either a logical or a vector of mode character. If
    \code{TRUE} then any tree names will be written prior to the tree on
    each line. If character, specifies the name of \code{"phylo"}
    objects which can be written to the file.}
}
\description{
  This function writes in a file a tree in parenthetic format using the
  Newick (also known as New Hampshire) format.
}
\value{
  a vector of mode character if \code{file = ""}, none (invisible
  \code{NULL}) otherwise.
}
\details{
  The node labels and the root edge length, if available, are written in
  the file.

  If \code{tree.names == TRUE} then a variant of the Newick format is
  written for which the name of a tree precedes the Newick format tree
  (parentheses are eventually deleted beforehand). The tree names are
  taken from the \code{names} attribute if present (they are ignored if
  \code{tree.names} is a character vector).

  The tip labels (and the node labels if present) are checked before
  being printed: the leading and trailing spaces, and the leading left
  and trailing right parentheses are deleted; the other spaces are
  replaced by underscores; the commas, colons, semicolons, and the other
  parentheses are replaced with dashes.

  The argument \code{digits} gives the number of \emph{significant}
  digits (not rounding). For instance, if \code{digits = 2} the branch
  length 1.234e-7 is printed as 1.23e-7 (not 0).
}
\references{
  Felsenstein, J. The Newick tree format.
  \url{http://evolution.genetics.washington.edu/phylip/newicktree.html}

  Olsen, G. Interpretation of the "Newick's 8:45" tree format standard.
  \url{http://evolution.genetics.washington.edu/phylip/newick_doc.html}
}

\author{Emmanuel Paradis, Daniel Lawson
  \email{dan.lawson@bristol.ac.uk}, and Klaus Schliep
  \email{klaus.schliep@gmail.com}}
\seealso{
  \code{\link{read.tree}}, \code{\link{read.nexus}},
  \code{\link{write.nexus}}, \code{\link{write.phyloXML}}
}
\keyword{manip}
\keyword{IO}
