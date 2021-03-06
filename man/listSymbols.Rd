\name{listSymbols}
\alias{listSymbols}
\title{List unique gene symbols from a \dQuote{g2} table.}

\description{
Takes row names from a \dQuote{g2} table and returns a list of unique gene symbols.
}

\usage{
listSymbols(...)
}

\arguments{
\item{...}{Vector(s) of character strings.}
}

\details{
Multiple genes can overlap at a given position on the genome.  Therefore, it is
hard to associate directly a single-base TSS to a single gene symbol.  In our
workflows we prepare gene expression tables (often called \dQuote{g2}) where
TSS counts are pooled per gene symbol.  If a position belongs to more than one
gene, an artificial ad-hoc symbol is created by concatenating the symbols with
commas.  For instance, \sQuote{7SK,ACTR5}.  As a result, one can not infer the
number of detected genes by simply counting the number of rows where expression
is higher that zero.

\code{listSymbols} is the solution to that problem.  It will concatenate with
commas a list of row names from such gene expression tables, and then expand it
again and remove duplicates.  That is, \sQuote{"7SK,ACTR5", "7SK,ADAM10"}
becomes \sQuote{"7SK,ACTR5,7SK,ADAM10"} and then \sQuote{"7SK" ,ACTR5",
"ADAM10"}.  \code{listSymbols} will also search and remove the \dQuote{.} gene
symbol, which is a special artefact of our \dQuote{g2} tables.
}

\value{
Returns a vector of unique character strings.
}

\author{
Charles Plessy <plessy@riken.jp>
}

\seealso{
\code{\link{countSymbols}}
}

\examples{
listSymbols("7SK,ACTR5", "7SK,ADAM10")
}

\keyword{ ~CAGE }
